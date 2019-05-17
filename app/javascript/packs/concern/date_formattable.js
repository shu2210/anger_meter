import moment from 'moment';

export default {
  filters: {
    moment: function (date) {
      return moment(date).format('YYYY年MM月DD日');
    }
  }
}
