module Stratosphere.Connect.Rule.TaskActionProperty (
        module Exports, TaskActionProperty(..), mkTaskActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.ReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-taskaction.html>
    TaskActionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-taskaction.html#cfn-connect-rule-taskaction-contactflowarn>
                        contactFlowArn :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-taskaction.html#cfn-connect-rule-taskaction-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-taskaction.html#cfn-connect-rule-taskaction-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-taskaction.html#cfn-connect-rule-taskaction-references>
                        references :: (Prelude.Maybe (Prelude.Map Prelude.Text ReferenceProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TaskActionProperty
mkTaskActionProperty contactFlowArn name
  = TaskActionProperty
      {haddock_workaround_ = (), contactFlowArn = contactFlowArn,
       name = name, description = Prelude.Nothing,
       references = Prelude.Nothing}
instance ToResourceProperties TaskActionProperty where
  toResourceProperties TaskActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.TaskAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContactFlowArn" JSON..= contactFlowArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "References" Prelude.<$> references]))}
instance JSON.ToJSON TaskActionProperty where
  toJSON TaskActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContactFlowArn" JSON..= contactFlowArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "References" Prelude.<$> references])))
instance Property "ContactFlowArn" TaskActionProperty where
  type PropertyType "ContactFlowArn" TaskActionProperty = Value Prelude.Text
  set newValue TaskActionProperty {..}
    = TaskActionProperty {contactFlowArn = newValue, ..}
instance Property "Description" TaskActionProperty where
  type PropertyType "Description" TaskActionProperty = Value Prelude.Text
  set newValue TaskActionProperty {..}
    = TaskActionProperty {description = Prelude.pure newValue, ..}
instance Property "Name" TaskActionProperty where
  type PropertyType "Name" TaskActionProperty = Value Prelude.Text
  set newValue TaskActionProperty {..}
    = TaskActionProperty {name = newValue, ..}
instance Property "References" TaskActionProperty where
  type PropertyType "References" TaskActionProperty = Prelude.Map Prelude.Text ReferenceProperty
  set newValue TaskActionProperty {..}
    = TaskActionProperty {references = Prelude.pure newValue, ..}