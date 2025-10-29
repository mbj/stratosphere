module Stratosphere.SSMContacts.Contact (
        module Exports, Contact(..), mkContact
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Contact.StageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Contact
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-contact.html>
    Contact {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-contact.html#cfn-ssmcontacts-contact-alias>
             alias :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-contact.html#cfn-ssmcontacts-contact-displayname>
             displayName :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-contact.html#cfn-ssmcontacts-contact-plan>
             plan :: (Prelude.Maybe [StageProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-contact.html#cfn-ssmcontacts-contact-type>
             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContact ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Contact
mkContact alias displayName type'
  = Contact
      {alias = alias, displayName = displayName, type' = type',
       plan = Prelude.Nothing}
instance ToResourceProperties Contact where
  toResourceProperties Contact {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Contact",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Alias" JSON..= alias, "DisplayName" JSON..= displayName,
                            "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Plan" Prelude.<$> plan]))}
instance JSON.ToJSON Contact where
  toJSON Contact {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Alias" JSON..= alias, "DisplayName" JSON..= displayName,
               "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Plan" Prelude.<$> plan])))
instance Property "Alias" Contact where
  type PropertyType "Alias" Contact = Value Prelude.Text
  set newValue Contact {..} = Contact {alias = newValue, ..}
instance Property "DisplayName" Contact where
  type PropertyType "DisplayName" Contact = Value Prelude.Text
  set newValue Contact {..} = Contact {displayName = newValue, ..}
instance Property "Plan" Contact where
  type PropertyType "Plan" Contact = [StageProperty]
  set newValue Contact {..}
    = Contact {plan = Prelude.pure newValue, ..}
instance Property "Type" Contact where
  type PropertyType "Type" Contact = Value Prelude.Text
  set newValue Contact {..} = Contact {type' = newValue, ..}