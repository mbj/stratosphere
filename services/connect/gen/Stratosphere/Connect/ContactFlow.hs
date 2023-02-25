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
  = ContactFlow {content :: (Value Prelude.Text),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 instanceArn :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 state :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 type' :: (Value Prelude.Text)}
mkContactFlow ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> ContactFlow
mkContactFlow content instanceArn name type'
  = ContactFlow
      {content = content, instanceArn = instanceArn, name = name,
       type' = type', description = Prelude.Nothing,
       state = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ContactFlow where
  toResourceProperties ContactFlow {..}
    = ResourceProperties
        {awsType = "AWS::Connect::ContactFlow",
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