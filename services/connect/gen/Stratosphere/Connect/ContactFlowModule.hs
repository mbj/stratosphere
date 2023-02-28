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
  = ContactFlowModule {content :: (Value Prelude.Text),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       instanceArn :: (Value Prelude.Text),
                       name :: (Value Prelude.Text),
                       state :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
mkContactFlowModule ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ContactFlowModule
mkContactFlowModule content instanceArn name
  = ContactFlowModule
      {content = content, instanceArn = instanceArn, name = name,
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