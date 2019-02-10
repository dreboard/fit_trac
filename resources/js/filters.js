
Vue.filter('capitalize', function (value) {
    if (!value) return ''
    value = value.toString()
    return value.charAt(0).toUpperCase() + value.slice(1)
});

import moment from 'moment'
Vue.filter('formatDate', function(value) {
    if (value) {
        return moment(String(value)).format('MMMM Do YYYY')
    }
});

// Return the first/last element of an array
Vue.filter('first', function (values) {
    if(Array.isArray(values)) {
        return values[0];
    }
    return values;
});
Vue.filter('last', function (values) {
    if(Array.isArray(values)) {
        return values[values.length - 1];
    }
    return values;
});
Vue.filter('nullMeasurement',function(value) {
    if(value === null) {
        value = '0.00';
    }
    return value;
})