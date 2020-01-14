/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */






var cities = new Array();


cities['Madhya Pradesh'] = new Array('Bhopal','Dewas','Gwalior','Indore','Jabalpur','Jagdalpur','Ratlam','Sagar','Ujjain');

cities['Andhra Pradesh'] = new Array('Anantapur',    'Chitoor',    'Cuddapah',    'Guntur',    'Hyderabad',    'Kakinada',    'Kurnool',    'Nellore',    'Nizamabad',    'Puttaparthi',    'Rajahmundry',    'Tirupati',    'Vijayawada',    'Visakhapatnam',    'Warangal');


cities['Arunachal Pradesh'] = new Array('Itanagar');

cities['Chandigarh'] = new Array('Chandigarh');

cities['A n N Islands'] = new Array('A n N Islands');


cities['Dadra and Nagar Haveli'] = new Array('Dadra and Nagar Haveli');

cities['Daman and Diu'] = new Array('Daman and Diu');

cities['Delhi'] = new Array('Delhi');

cities['Lakshadweep'] = new Array('Lakshadweep');

cities['Pondicherry'] = new Array('Pondicherry');

cities['Assam'] = new Array('Guwahati', 'Jorhat', 'Silchar');

cities['Bihar'] = new Array('Bhagalpur', 'Gaya', 'Jamshedpur', 'Patna');

cities['Chhattisgarh'] = new Array('Bhilai', 'Bilaspur', 'Raipur');

cities['Gujarat'] = new Array('Ahmedabad','Vadodara','Gandhinagar','Surat');

cities['Karnataka'] = new Array('Bangalore','Hampi','Hassan','Mangalore','Mysore','Udupi');

cities['Kerala'] = new Array('Alleppey','Cochin','Kumarakom','Kovalam','Kozhikode','unnar','Quilon','Thekkady','Trivandrum');

cities['Maharashtra'] = new Array('Aurangabad','Mumbai','Nagpur','Pune');

cities['Manipur'] = new Array('Imphal');

cities['Meghalaya'] = new Array('Shillong');

cities['Mizoram'] = new Array('Aizawl');

cities['Nagaland'] = new Array('Kohima');

cities['Orissa'] = new Array('Bhubaneswar','Cuttack','Konark','Puri');


cities['Punjab'] = new Array('Amritsar','Chandigarh','Ludhiana','Patiala');

cities['Rajasthan'] = new Array('Jaipur','Jaisalmer','Jodhpur','Ranakpur','Shekhawati','Udaipur','Ajmer','Alwar','Bikaner','Bundi');



cities['Sikkim'] = new Array('Gangtok ');

cities['Tamil Nadu'] = new Array('Chennai','Coimbatore','Kanyakumari','Kodaikanal','Madurai','Ooty','Rameshwaram','Thanjavur','Trichy');


cities['Tripura'] = new Array('Agartala');

cities['Uttaranchal'] = new Array('Dehradun','Haridwar','Nainital','Rishikesh');

cities['Uttar Pradesh'] = new Array('Agra','Allahabad','Lucknow','Varanasi');


cities['West Bengal'] = new Array('Burdwan','Darjeeling','Durgapur','Kolkata','rshidabad');


cities['Goa'] = new Array('panaji');

//cities['Gujarat'] = new Array('Ahmedabad', 'Anand', 'Baroda', 'Bharuch', 'Bhavnagar', 'Dwarka', 'Jamnagar', 'Junagadh', 'Nadiad', 'Porbandar' 'Rajkot','Surat', 'Valsad', 'Vapi');

cities ['Haryana'] = new Array(  'Ambala',  'Faridabad',    'Gurgaon',     'Hissar',     'Karnal',     'Kurukshetra',     'Panipat',     'Rohtak',     'Yamunanagar');

cities ['Himachal Pradesh'] = new Array('Dalhousie', 'Kullu', 'Shimla', 'Solan'); 

cities ['Jammu and Kashmir'] = new Array('Shrinagar','Jammu');

cities ['Jharkhand'] = new Array('Dhanbad','Rachi');




function setCities() {
  stateSel = document.getElementById('state');
  cityList = cities[stateSel.value];
  changeSelect('city', cityList, cityList);
}
function setCities1() {
  stateSel = document.getElementById('state1');
  cityList = cities[stateSel.value];
  changeSelect('city1', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}




function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  setStates();
});
