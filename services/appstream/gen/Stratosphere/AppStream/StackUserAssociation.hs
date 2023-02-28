module Stratosphere.AppStream.StackUserAssociation (
        StackUserAssociation(..), mkStackUserAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackUserAssociation
  = StackUserAssociation {authenticationType :: (Value Prelude.Text),
                          sendEmailNotification :: (Prelude.Maybe (Value Prelude.Bool)),
                          stackName :: (Value Prelude.Text),
                          userName :: (Value Prelude.Text)}
mkStackUserAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> StackUserAssociation
mkStackUserAssociation authenticationType stackName userName
  = StackUserAssociation
      {authenticationType = authenticationType, stackName = stackName,
       userName = userName, sendEmailNotification = Prelude.Nothing}
instance ToResourceProperties StackUserAssociation where
  toResourceProperties StackUserAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::StackUserAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType,
                            "StackName" JSON..= stackName, "UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "SendEmailNotification"
                                 Prelude.<$> sendEmailNotification]))}
instance JSON.ToJSON StackUserAssociation where
  toJSON StackUserAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType,
               "StackName" JSON..= stackName, "UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "SendEmailNotification"
                    Prelude.<$> sendEmailNotification])))
instance Property "AuthenticationType" StackUserAssociation where
  type PropertyType "AuthenticationType" StackUserAssociation = Value Prelude.Text
  set newValue StackUserAssociation {..}
    = StackUserAssociation {authenticationType = newValue, ..}
instance Property "SendEmailNotification" StackUserAssociation where
  type PropertyType "SendEmailNotification" StackUserAssociation = Value Prelude.Bool
  set newValue StackUserAssociation {..}
    = StackUserAssociation
        {sendEmailNotification = Prelude.pure newValue, ..}
instance Property "StackName" StackUserAssociation where
  type PropertyType "StackName" StackUserAssociation = Value Prelude.Text
  set newValue StackUserAssociation {..}
    = StackUserAssociation {stackName = newValue, ..}
instance Property "UserName" StackUserAssociation where
  type PropertyType "UserName" StackUserAssociation = Value Prelude.Text
  set newValue StackUserAssociation {..}
    = StackUserAssociation {userName = newValue, ..}