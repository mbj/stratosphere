module Stratosphere.Connect.ContactFlow (
        ContactFlow(..), mkContactFlow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ContactFlow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html>
    ContactFlow {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-content>
                 content :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-instancearn>
                 instanceArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-state>
                 state :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-contactflow.html#cfn-connect-contactflow-type>
                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContactFlow ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> ContactFlow
mkContactFlow content instanceArn name type'
  = ContactFlow
      {haddock_workaround_ = (), content = content,
       instanceArn = instanceArn, name = name, type' = type',
       description = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ContactFlow where
  toResourceProperties ContactFlow {..}
    = ResourceProperties
        {awsType = "AWS::Connect::ContactFlow",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "InstanceArn" JSON..= instanceArn,
                            "Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ContactFlow where
  toJSON ContactFlow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "InstanceArn" JSON..= instanceArn,
               "Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Content" ContactFlow where
  type PropertyType "Content" ContactFlow = Value Prelude.Text
  set newValue ContactFlow {..}
    = ContactFlow {content = newValue, ..}
instance Property "Description" ContactFlow where
  type PropertyType "Description" ContactFlow = Value Prelude.Text
  set newValue ContactFlow {..}
    = ContactFlow {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" ContactFlow where
  type PropertyType "InstanceArn" ContactFlow = Value Prelude.Text
  set newValue ContactFlow {..}
    = ContactFlow {instanceArn = newValue, ..}
instance Property "Name" ContactFlow where
  type PropertyType "Name" ContactFlow = Value Prelude.Text
  set newValue ContactFlow {..} = ContactFlow {name = newValue, ..}
instance Property "State" ContactFlow where
  type PropertyType "State" ContactFlow = Value Prelude.Text
  set newValue ContactFlow {..}
    = ContactFlow {state = Prelude.pure newValue, ..}
instance Property "Tags" ContactFlow where
  type PropertyType "Tags" ContactFlow = [Tag]
  set newValue ContactFlow {..}
    = ContactFlow {tags = Prelude.pure newValue, ..}
instance Property "Type" ContactFlow where
  type PropertyType "Type" ContactFlow = Value Prelude.Text
  set newValue ContactFlow {..} = ContactFlow {type' = newValue, ..}