module Stratosphere.AppStream.StackUserAssociation (
        StackUserAssociation(..), mkStackUserAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackUserAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html>
    StackUserAssociation {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-authenticationtype>
                          authenticationType :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-sendemailnotification>
                          sendEmailNotification :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-stackname>
                          stackName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-username>
                          userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackUserAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> StackUserAssociation
mkStackUserAssociation authenticationType stackName userName
  = StackUserAssociation
      {haddock_workaround_ = (), authenticationType = authenticationType,
       stackName = stackName, userName = userName,
       sendEmailNotification = Prelude.Nothing}
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