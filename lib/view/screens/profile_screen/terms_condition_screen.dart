import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/string.dart';
import 'package:memorial/view/widgets/custom_appbar.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: CustomAppbar(
              title: AppString.terms,
            )),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'Agreement between User and memorial moments.org, veterans memorial moments, pet memorial moments and Mobile app:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Welcome to memorial moments.org, veterans memorial moments, and pet memorial moments. The memorial moments.org, veterans memorial moments, and pet memorial moments website (the "Site") to include Mobile app (“App”) is comprised of various web pages operated by Remenice Enterprise LLC. memorial moments.org, veterans memorial moments, pets memorial moments and app is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein (the "Terms"). Your use of memorial moments.org, veterans memorial moments, pets memorial moments and app constitutes your agreement to all such Terms. Please read these terms carefully and keep a copy of them for your reference.\nmemorial moments.org, veterans memorial moments, pets memorial moments and app is a Blog Site.\nIndividuals are able to tell their story from their point of view and post pictures. This is about their loved one who have passed on. May it be a relative, friend, veteran or pet.\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Privacy:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Your use of memorial moments.org, veterans memorial moments, pets memorial moments and app is subject to Remenice Enterprise LLC\'s Privacy Policy. Please review our Privacy Policy, which also governs the Site and informs users of our data collection practices.\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Electronic Communications:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Visiting memorial moments.org, veterans memorial moments, pets memorial moments and Mobile app or sending emails to Remenice Enterprise LLC constitutes electronic communications. You consent to receive electronic communications, and you agree that all agreements, notices, disclosures and other communications that we provide to you electronically, via email and on the Site, satisfy any legal requirement that such communications be in writing.\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Your Account:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'If you use this site or app, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and phone you also agree to accept responsibility for all activities that occur under your account or password. You may not assign or otherwise transfer your account to any other person or entity. You acknowledge that Remenice Enterprise LLC is not responsible for third party access to your account that results from theft or misappropriation of your account. Remenice Enterprise LLC and its associates reserve the right to refuse or cancel service, terminate accounts, or remove or edit content in our sole discretion.\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Children Under Thirteen:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Remenice Enterprise LLC does not knowingly collect, either online or offline, personal information from persons under the age of thirteen. If you are under 18, you may use memorial moments.org, veterans memorial moments, pets memorial moments and app only with permission of a parent or guardian. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Cancellation/Refund Policy:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'You may cancel your subscription at anytime. However, due to every 30 days new publication, cancelations after 25 days of your order will not receive a refund. Any questions please contact us at remeniceenterprise@gmail.com \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Links to Third Party Sites/Third Party Services:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Memorial moments.org, veterans memorial moments, and pets memorial moments may contain links to other websites ("Linked Sites"). The Linked Sites are not under the control of Remenice Enterprise LLC and Remenice Enterprise LLC is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or updates to a Linked Site. Remenice Enterprise LLC is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Remenice Enterprise LLC of the site or any association with its operators. \nCertain services made available via memorial moments.org, veterans memorial moments, pets memorial moments and app are delivered by third party sites and organizations. By using any product, service or functionality originating from the memorial moments.org, veterans memorial moments, and pets memorial moments domain, you hereby acknowledge and consent that Remenice Enterprise LLC may share such information and data with any third party with whom Remenice Enterprise LLC has a contractual relationship to provide the requested product, service or functionality on behalf of memorial moments.org, veterans memorial moments, and pets memorial moments users and customers. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'No Unlawful or Prohibited Use/Intellectual Property:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'You are granted a non-exclusive, non-transferable, revocable license to access and use memorial moments.org, veterans memorial moments, pets memorial moments and app strictly in accordance with these terms of use. As a condition of your use of the Site, you warrant to Remenice Enterprise LLC that you will not use the Site for any purpose that is unlawful or prohibited by these Terms. Further; You may not use this Site or app using words of profanity, also to defame the memory of any person, veteran or pet.  You may not use the Site in any manner which could damage, disable, overburden, or impair the Site or interfere with any other party\'s use and enjoyment of the Site. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the Site.\nAll content included as part of the Service, such as text, graphics, logos, images, as well as the compilation thereof, and any software used on the Site, is the property of Remenice Enterprise LLC or its suppliers and protected by copyright and other laws that protect intellectual property and proprietary rights. You agree to observe and abide by all copyright and other proprietary notices, legends or other restrictions contained in any such content and will not make any changes thereto. \nYou will not modify, publish, transmit, reverse engineer, participate in the transfer or sale, create derivative works, or in any way exploit any of the content, in whole or in part, found on the Site. Remenice Enterprise LLC content is not for resale. Your use of the Site does not entitle you to make any unauthorized use of any protected content, and in particular you will not delete or alter any proprietary rights or attribution notices in any content. You will use protected content solely for your personal use, and will make no other use of the content without the express written permission of Remenice Enterprise LLC and the copyright owner. You agree that you do not acquire any ownership rights in any protected content. We do not grant you any licenses, express or implied, to the intellectual property of Remenice Enterprise LLC or our licensors except as expressly authorized by these Terms. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'International Users:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'The Service is controlled, operated and administered by Remenice Enterprise LLC from our offices within the USA. If you access the Service from a location outside the USA, you are responsible for compliance with all local laws. You agree that you will not use the Remenice Enterprise LLC Content accessed through memorial moments.org, veterans memorial moments, and pets memorial moments in any country or in any manner prohibited by any applicable laws, restrictions or regulations. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Indemnification:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'You agree to indemnify, defend and hold harmless Remenice Enterprise LLC, its officers, directors, employees, agents and third parties, for any losses, costs, liabilities and expenses (including reasonable attorney\'s fees) relating to or arising out of your use of or inability to use the Site or services, any user postings made by you, your violation of any terms of this Agreement or your violation of any rights of a third party, or your violation of any applicable laws, rules or regulations. Remenice Enterprise LLC reserves the right, at its own cost, to assume the exclusive defense and control of any matter otherwise subject to indemnification by you, in which event you will fully cooperate with Remenice Enterprise LLC in asserting any available defenses. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Arbitration:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'In the event the parties are not able to resolve any dispute between them arising out of or concerning these Terms and Conditions, or any provisions hereof, whether in contract, tort, or otherwise at law or in equity for damages or any other relief, then such dispute shall be resolved only by final and binding arbitration pursuant to the Federal Arbitration Act, conducted by a single neutral arbitrator and administered by the American Arbitration Association, or a similar arbitration service selected by the parties, in a location mutually agreed upon by the parties. The arbitrator\'s award shall be final, and judgment may be entered upon it in any court having jurisdiction. In the event that any legal or equitable action, proceeding or arbitration arises out of or concerns these Terms and Conditions, the prevailing party shall be entitled to recover its costs and reasonable attorney\'s fees. The parties agree to arbitrate all disputes and claims in regards to these Terms and Conditions or any disputes arising as a result of these Terms and Conditions, whether directly or indirectly, including Tort claims that are a result of these Terms and Conditions. The parties agree that the Federal Arbitration Act governs the interpretation and enforcement of this provision. The entire dispute, including the scope and enforceability of this arbitration provision shall be determined by the Arbitrator. This arbitration provision shall survive the termination of these Terms and Conditions. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Class Action Waiver:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Any arbitration under these Terms and Conditions will take place on an individual basis; class arbitration and class/representative/collective actions are not permitted. THE PARTIES AGREE THAT A PARTY MAY BRING CLAIMS AGAINST THE OTHER ONLY IN EACH\'S INDIVIDUAL CAPACITY, AND NOT AS A PLAINTIFF OR CLASS MEMBER IN ANY PUTATIVE CLASS, COLLECTIVE AND/ OR REPRESENTATIVE PROCEEDING, SUCH AS IN THE FORM OF A PRIVATE ATTORNEY GENERAL ACTION AGAINST THE OTHER. Further, unless both you and Remenice Enterprise LLC agree otherwise, the arbitrator may not consolidate more than one person\'s claims, and may not otherwise preside over any form of a representative or class proceeding. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Liability Disclaimer:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'THE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE SITE MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. REMENICE ENTERPRISE LLC AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE SITE AT ANY TIME. \n REMENICE ENTERPRISE LLC AND/OR ITS SUPPLIERS MAKE NO REPRESENTATIONS ABOUT THE SUITABILITY, RELIABILITY, AVAILABILITY, TIMELINESS, AND ACCURACY OF THE INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS CONTAINED ON THE SITE FOR ANY PURPOSE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL SUCH INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS ARE PROVIDED "AS IS" WITHOUT WARRANTY OR CONDITION OF ANY KIND. REMENICE ENTERPRISE LLC AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH REGARD TO THIS INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. \nTO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL REMENICE ENTERPRISE LLC AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THE SITE, WITH THE DELAY OR INABILITY TO USE THE SITE OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE SITE, OR OTHERWISE ARISING OUT OF THE USE OF THE SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF REMENICE ENTERPRISE LLC OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES,  \nTHE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE SITE, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE SITE. \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Termination/Access Restriction:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Remenice Enterprise LLC reserves the right, in its sole discretion, to terminate your access to the Site and the related services or any portion thereof at any time, without notice. To the maximum extent permitted by law, this agreement is governed by the laws of the State of New Jersey and you hereby consent to the exclusive jurisdiction and venue of courts in New Jersey in all disputes arising out of or relating to the use of the Site. Use of the Site is unauthorized in any jurisdiction that does not give effect to all provisions of these Terms, including, without limitation, this section. \n You agree that no joint venture, partnership, employment, or agency relationship exists between you and Remenice Enterprise LLC as a result of this agreement or use of the Site. Remenice Enterprise LLC\'s performance of this agreement is subject to existing laws and legal process, and nothing contained in this agreement is in derogation of Remenice Enterprise LLC\'s right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Site or information provided to or gathered by Remenice Enterprise LLC with respect to such use. If any part of this agreement is determined to be invalid or unenforceable pursuant to applicable law including, but not limited to, the warranty disclaimers and liability limitations set forth above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect. \nUnless otherwise specified herein, this agreement constitutes the entire agreement between the user and Remenice Enterprise LLC with respect to the Site and it supersedes all prior or contemporaneous communications and proposals, whether electronic, oral or written, between the user and Remenice Enterprise LLC with respect to the Site. A printed version of this agreement and of any notice given in electronic form shall be admissible in judicial or administrative proceedings based upon or relating to this agreement to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form. It is the express wish to the parties that this agreement and all related documents be written in English.\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Changes to Terms:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Remenice Enterprise LLC reserves the right, in its sole discretion, to change the Terms under which memorial moments.org, veterans memorial moments, and pets memorial moments is offered. The most current version of the Terms will supersede all previous versions. Remenice Enterprise LLC encourages you to periodically review the Terms to stay informed of our updates. \n\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Contact Us:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text:
                      'Remenice Enterprise LLC welcomes your questions or comments regarding the Terms: \nRemenice Enterprise LLC P.O. Box 185  \nAtco, New Jersey 08004\n\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Email Address:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'remeniceenterprise@gmail.com\n\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Telephone number: \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: '(609)327-7992\n\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
                TextSpan(
                  text: 'Effective as of June 12, 2024 ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 0.54,
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
