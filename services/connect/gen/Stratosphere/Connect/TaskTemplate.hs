module Stratosphere.Connect.TaskTemplate (
        module Exports, TaskTemplate(..), mkTaskTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.ConstraintsProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.DefaultFieldValueProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TaskTemplate
  = TaskTemplate {clientToken :: (Prelude.Maybe (Value Prelude.Text)),
                  constraints :: (Prelude.Maybe ConstraintsProperty),
                  contactFlowArn :: (Prelude.Maybe (Value Prelude.Text)),
                  defaults :: (Prelude.Maybe [DefaultFieldValueProperty]),
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  fields :: (Prelude.Maybe [FieldProperty]),
                  instanceArn :: (Value Prelude.Text),
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  status :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskTemplate :: Value Prelude.Text -> TaskTemplate
mkTaskTemplate instanceArn
  = TaskTemplate
      {instanceArn = instanceArn, clientToken = Prelude.Nothing,
       constraints = Prelude.Nothing, contactFlowArn = Prelude.Nothing,
       defaults = Prelude.Nothing, description = Prelude.Nothing,
       fields = Prelude.Nothing, name = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TaskTemplate where
  toResourceProperties TaskTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                               (JSON..=) "Constraints" Prelude.<$> constraints,
                               (JSON..=) "ContactFlowArn" Prelude.<$> contactFlowArn,
                               (JSON..=) "Defaults" Prelude.<$> defaults,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Fields" Prelude.<$> fields,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TaskTemplate where
  toJSON TaskTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ClientToken" Prelude.<$> clientToken,
                  (JSON..=) "Constraints" Prelude.<$> constraints,
                  (JSON..=) "ContactFlowArn" Prelude.<$> contactFlowArn,
                  (JSON..=) "Defaults" Prelude.<$> defaults,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Fields" Prelude.<$> fields,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClientToken" TaskTemplate where
  type PropertyType "ClientToken" TaskTemplate = Value Prelude.Text
  set newValue TaskTemplate {..}
    = TaskTemplate {clientToken = Prelude.pure newValue, ..}
instance Property "Constraints" TaskTemplate where
  type PropertyType "Constraints" TaskTemplate = ConstraintsProperty
  set newValue TaskTemplate {..}
    = TaskTemplate {constraints = Prelude.pure newValue, ..}
instance Property "ContactFlowArn" TaskTemplate where
  type PropertyType "ContactFlowArn" TaskTemplate = Value Prelude.Text
  set newValue TaskTemplate {..}
    = TaskTemplate {contactFlowArn = Prelude.pure newValue, ..}
instance Property "Defaults" TaskTemplate where
  type PropertyType "Defaults" TaskTemplate = [DefaultFieldValueProperty]
  set newValue TaskTemplate {..}
    = TaskTemplate {defaults = Prelude.pure newValue, ..}
instance Property "Description" TaskTemplate where
  type PropertyType "Description" TaskTemplate = Value Prelude.Text
  set newValue TaskTemplate {..}
    = TaskTemplate {description = Prelude.pure newValue, ..}
instance Property "Fields" TaskTemplate where
  type PropertyType "Fields" TaskTemplate = [FieldProperty]
  set newValue TaskTemplate {..}
    = TaskTemplate {fields = Prelude.pure newValue, ..}
instance Property "InstanceArn" TaskTemplate where
  type PropertyType "InstanceArn" TaskTemplate = Value Prelude.Text
  set newValue TaskTemplate {..}
    = TaskTemplate {instanceArn = newValue, ..}
instance Property "Name" TaskTemplate where
  type PropertyType "Name" TaskTemplate = Value Prelude.Text
  set newValue TaskTemplate {..}
    = TaskTemplate {name = Prelude.pure newValue, ..}
instance Property "Status" TaskTemplate where
  type PropertyType "Status" TaskTemplate = Value Prelude.Text
  set newValue TaskTemplate {..}
    = TaskTemplate {status = Prelude.pure newValue, ..}
instance Property "Tags" TaskTemplate where
  type PropertyType "Tags" TaskTemplate = [Tag]
  set newValue TaskTemplate {..}
    = TaskTemplate {tags = Prelude.pure newValue, ..}