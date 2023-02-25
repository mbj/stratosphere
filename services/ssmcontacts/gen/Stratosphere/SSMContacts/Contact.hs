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
  = Contact {alias :: (Value Prelude.Text),
             displayName :: (Value Prelude.Text),
             plan :: [StageProperty],
             type' :: (Value Prelude.Text)}
mkContact ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [StageProperty] -> Value Prelude.Text -> Contact
mkContact alias displayName plan type'
  = Contact
      {alias = alias, displayName = displayName, plan = plan,
       type' = type'}
instance ToResourceProperties Contact where
  toResourceProperties Contact {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Contact",
         properties = ["Alias" JSON..= alias,
                       "DisplayName" JSON..= displayName, "Plan" JSON..= plan,
                       "Type" JSON..= type']}
instance JSON.ToJSON Contact where
  toJSON Contact {..}
    = JSON.object
        ["Alias" JSON..= alias, "DisplayName" JSON..= displayName,
         "Plan" JSON..= plan, "Type" JSON..= type']
instance Property "Alias" Contact where
  type PropertyType "Alias" Contact = Value Prelude.Text
  set newValue Contact {..} = Contact {alias = newValue, ..}
instance Property "DisplayName" Contact where
  type PropertyType "DisplayName" Contact = Value Prelude.Text
  set newValue Contact {..} = Contact {displayName = newValue, ..}
instance Property "Plan" Contact where
  type PropertyType "Plan" Contact = [StageProperty]
  set newValue Contact {..} = Contact {plan = newValue, ..}
instance Property "Type" Contact where
  type PropertyType "Type" Contact = Value Prelude.Text
  set newValue Contact {..} = Contact {type' = newValue, ..}