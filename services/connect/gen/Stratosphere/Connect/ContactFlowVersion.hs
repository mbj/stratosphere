module Stratosphere.Connect.ContactFlowVersion (
        ContactFlowVersion(..), mkContactFlowVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContactFlowVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowversion.html>
    ContactFlowVersion {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowversion.html#cfn-connect-contactflowversion-contactflowid>
                        contactFlowId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowversion.html#cfn-connect-contactflowversion-description>
                        description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContactFlowVersion :: Value Prelude.Text -> ContactFlowVersion
mkContactFlowVersion contactFlowId
  = ContactFlowVersion
      {haddock_workaround_ = (), contactFlowId = contactFlowId,
       description = Prelude.Nothing}
instance ToResourceProperties ContactFlowVersion where
  toResourceProperties ContactFlowVersion {..}
    = ResourceProperties
        {awsType = "AWS::Connect::ContactFlowVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContactFlowId" JSON..= contactFlowId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ContactFlowVersion where
  toJSON ContactFlowVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContactFlowId" JSON..= contactFlowId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "ContactFlowId" ContactFlowVersion where
  type PropertyType "ContactFlowId" ContactFlowVersion = Value Prelude.Text
  set newValue ContactFlowVersion {..}
    = ContactFlowVersion {contactFlowId = newValue, ..}
instance Property "Description" ContactFlowVersion where
  type PropertyType "Description" ContactFlowVersion = Value Prelude.Text
  set newValue ContactFlowVersion {..}
    = ContactFlowVersion {description = Prelude.pure newValue, ..}