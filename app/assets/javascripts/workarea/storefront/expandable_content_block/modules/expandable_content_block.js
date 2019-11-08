/**
 * @namespace WORKAREA.expandableContentBlock
 */
WORKAREA.registerModule('expandableContentBlock', (function () {
    'use strict';

    var finishClosing = function ($expandable) {
            $expandable
            .removeClass('expandable-content-block--open expandable-content-block--closing')
            .off(WORKAREA.transitionEvents.detect());
            $('.expandable-content-block__heading', $expandable).attr('aria-expanded', 'false');
        },

        close = function($expandable) {
            $expandable.addClass('expandable-content-block--closing');
            $expandable.on(WORKAREA.transitionEvents.detect(), _.partial(finishClosing, $expandable));
        },

        open = function ($expandable) {
            $expandable.addClass('expandable-content-block--open');
            $('.expandable-content-block__heading', $expandable).attr('aria-expanded', 'true');
        },

        isOpen = function($expandable) {
            return $expandable.hasClass('expandable-content-block--open');
        },

        handleExpandableButtonClick = function(event) {
            var $trigger = $(event.target),
                $expandable = $trigger.closest('.expandable-content-block');

            if (isOpen($expandable)) {
                close($expandable);
            } else {
                open($expandable);
            }
        },

        init = function ($scope) {
            $('[data-expandable-content-block] .expandable-content-block__heading', $scope)
            .on('click', handleExpandableButtonClick);
        };

    return {
        init: init
    };
}()));
