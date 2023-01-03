import 'package:flutter/material.dart';

class OptionButton {
  final String displayText;
  final String qKey;

  OptionButton({
    required this.displayText,
    required this.qKey,
  });
}

class Questions {
  final String qString;
  final List<OptionButton> oButtons;
  final String oTemplate;
  Questions({
    required this.qString,
    required this.oButtons,
    this.oTemplate = "NA",
  });
}

OptionButton tHome = OptionButton(displayText: "Go to HomePage", qKey: "100");
OptionButton test = OptionButton(displayText: "Key Account", qKey: "101");
OptionButton test1 = OptionButton(displayText: "Special Billing", qKey: "102");
OptionButton test2 =
    OptionButton(displayText: "VIP or Platinum Accounts", qKey: "103");
OptionButton test3 =
    OptionButton(displayText: "Residential or Small Commercial", qKey: "104");
OptionButton test4 = OptionButton(displayText: "1,2 & 3 Groups", qKey: "102");
OptionButton test5 = OptionButton(displayText: "4 & 5 Groups", qKey: "103");
OptionButton test6 = OptionButton(displayText: "Yes", qKey: "104");
OptionButton test7 = OptionButton(displayText: "No", qKey: "105");
OptionButton test8 = OptionButton(displayText: "Key Account", qKey: "101");
OptionButton test9 = OptionButton(displayText: "Key Account", qKey: "101");
OptionButton test10 = OptionButton(displayText: "Key Account", qKey: "101");
OptionButton test11 = OptionButton(displayText: "Key Account", qKey: "101");

Map<String, Questions> sampData = {
  "100": Questions(qString: step1, oButtons: [test, test1, test2, test3]),
  "101": Questions(qString: step2, oButtons: [test4, test5]),
  "102": Questions(qString: step3, oButtons: [tHome], oTemplate: temp1),
  "103": Questions(qString: step4, oButtons: [test6, test7]),
  "104": Questions(qString: step5, oButtons: [tHome], oTemplate: temp2),
  "105": Questions(qString: step6, oButtons: [tHome], oTemplate: temp3),
  "106": Questions(qString: "Step7", oButtons: [test, test1, test2]),
};

String step1 =
    '''Accept the Case from Omni Channel. Check the description and the Subject Line.
If the customer wants to quit, check the account type and if it is
''';

String step2 =
    '''Check for the type of group in address dashboard & if the customer falls in''';

String step3 =
    '''Transfer to Area General Manager. Send the below response to the customer and close the case''';

String step4 =
    '''Check for rental dspenser to pick. Check for quantity in previous order
for empties( only 5 gallon and 3 gallon bottle to be picked up)

''';

String step5 = '''Select the type of the empties in Assets and Services Tab.
Add the empties quantity in the Assets and Services Tab in the Quit Section.
Click on confirm. This will quit the accout.
Send the below response to the customer and close the case.
''';

String step6 = '''
Click on confirm. This will Quit the account.
Send the below response to the customer and close the case.
''';

String temp1 = '''We have referred your query to the concerned team and
will hear back from us within two or three business days.
''';

String temp2 = '''
Dear Valued Customer,

Thank you for being a ReadyRefresh customer since [DATE].

This email serves as confirmation that your service with ReadyRefresh has been cancelled, 
effective on [DATE]. We have scheduled the pick-up of your [water cooler(s)] and
[empty 3- or 5-gallon bottles] on [DATE].

We are so sorry to see you go and wanted to take this opportunity to let you know
about an exclusive offer should you decide to stay. If you’d like to reactivate your
 account, we can offer you up to \$30 off each of your next 6 deliveries* from ReadyRefresh.
To reactivate your account and take advantage of this offer, please contact us directly 
at 800-274-5282 or respond to this email and let us know within the next 7 days!

Our customer experience team is dedicated to making sure we do everything we can 
to address your questions or concerns. While this email confirms that your account 
is now closed, we hope that you will consider reinstating your account and redeeming 
this exclusive offer! We hope to hear from you soon!

Stay Hydrated,

Your Friends at ReadyRefresh

*Offer good for customers who terminated their accounts.  To accept offer, customer must
reactivate account within the specified time period and select any deliver frequency option
other than “one time.” Cannot be combined with other offers.  Qualifying customers will receive an account
credit of up to \$30 (excluding taxes, deposits, and fees) to be automatically applied
to each of their next 6 invoices.  Account credit cannot be redeemed for cash. 
Minimum purchase of \$30 is required. Account and/or bottle deposits, activation fees,
  and certain restrictions apply. Offer is only valid for this account. Accounts with a water
dispenser(s) rental will continue to be charged applicable fees until the dispenser(s)
is picked up by ReadyRefresh. There is a \$50 fee for every dispenser that is picked up
and reconditioned by ReadyRefresh. All other aspects of the original agreement remain the same.
''';

String temp3 = '''Dear Valued Customer,

Thank you for being a ReadyRefresh customer since [DATE].

This email serves as confirmation that your service with ReadyRefresh has been cancelled, effective on [DATE]. 

We are so sorry to see you go and wanted to take this opportunity to let you know
about an exclusive offer should you decide to stay. If you’d like to reactivate your
account, we can offer you up to \$30 off each of your next 6 deliveries* from ReadyRefresh.
To reactivate your account and take advantage of this offer, please contact us directly
at 800-274-5282 or respond to this email and let us know within the next 7 days!

Our customer experience team is dedicated to making sure we do everything we can to
address your questions or concerns. While this email confirms that your account is 
now closed, we hope that you will consider reinstating your account and redeeming this
exclusive offer! We hope to hear from you soon!

Stay Hydrated,

Your Friends at ReadyRefresh

*Offer good for customers who terminated their accounts.  To accept offer, customer
must reactivate account within the specified time period and select any deliver 
frequency option other than “one time.” Cannot be combined with other offers.  
Qualifying customers will receive an account credit of up to \$30 (excluding taxes, deposits, and fees)
to be automatically applied to each of their next 6 invoices.  Account credit cannot be redeemed 
for cash. Minimum purchase of \$30 is required. Account and/or bottle deposits, activation fees,
and certain restrictions apply. Offer is only valid for this account. Accounts with a water dispenser(s)
rental will continue to be charged applicable fees until the dispenser(s) is picked up by ReadyRefresh.
There is a \$50 fee for every dispenser that is picked up and reconditioned by ReadyRefresh. 
 All other aspects of the original agreement remain the same.
''';
