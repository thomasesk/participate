import "bootstrap";
import { initInput } from '../plugins/rangebar';
import { deleteSearch } from '../plugins/research';
import { initFormDonation } from '../components/form_donation';
import { initShareDonation } from '../components/share_donation';

initInput();
initFormDonation();
initShareDonation();
deleteSearch();
