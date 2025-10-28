module Stratosphere.Connect.ContactFlowModule (
        ContactFlowModule(..), mkContactFlowModule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ContactFlowModule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html>
    ContactFlowModule {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html#cfn-connect-contactflowmodule-content>
                       content :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html#cfn-connect-contactflowmodule-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html#cfn-connect-contactflowmodule-instancearn>
                       instanceArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html#cfn-connect-contactflowmodule-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html#cfn-connect-contactflowmodule-state>
                       state :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflowmodule.html#cfn-connect-contactflowmodule-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContactFlowModule ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ContactFlowModule
mkContactFlowModule content instanceArn name
  = ContactFlowModule
      {haddock_workaround_ = (), content = content,
       instanceArn = instanceArn, name = name,
       description = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ContactFlowModule where
  toResourceProperties ContactFlowModule {..}
    = ResourceProperties
        {awsType = "AWS::Connect::ContactFlowModule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "InstanceArn" JSON..= instanceArn,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ContactFlowModule where
  toJSON ContactFlowModule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "InstanceArn" JSON..= instanceArn,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Content" ContactFlowModule where
  type PropertyType "Content" ContactFlowModule = Value Prelude.Text
  set newValue ContactFlowModule {..}
    = ContactFlowModule {content = newValue, ..}
instance Property "Description" ContactFlowModule where
  type PropertyType "Description" ContactFlowModule = Value Prelude.Text
  set newValue ContactFlowModule {..}
    = ContactFlowModule {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" ContactFlowModule where
  type PropertyType "InstanceArn" ContactFlowModule = Value Prelude.Text
  set newValue ContactFlowModule {..}
    = ContactFlowModule {instanceArn = newValue, ..}
instance Property "Name" ContactFlowModule where
  type PropertyType "Name" ContactFlowModule = Value Prelude.Text
  set newValue ContactFlowModule {..}
    = ContactFlowModule {name = newValue, ..}
instance Property "State" ContactFlowModule where
  type PropertyType "State" ContactFlowModule = Value Prelude.Text
  set newValue ContactFlowModule {..}
    = ContactFlowModule {state = Prelude.pure newValue, ..}
instance Property "Tags" ContactFlowModule where
  type PropertyType "Tags" ContactFlowModule = [Tag]
  set newValue ContactFlowModule {..}
    = ContactFlowModule {tags = Prelude.pure newValue, ..}