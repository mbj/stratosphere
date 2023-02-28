module Stratosphere.IoTWireless.Destination (
        Destination(..), mkDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Destination
  = Destination {description :: (Prelude.Maybe (Value Prelude.Text)),
                 expression :: (Value Prelude.Text),
                 expressionType :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 roleArn :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
mkDestination ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Destination
mkDestination expression expressionType name roleArn
  = Destination
      {expression = expression, expressionType = expressionType,
       name = name, roleArn = roleArn, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Destination where
  toResourceProperties Destination {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::Destination",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression,
                            "ExpressionType" JSON..= expressionType, "Name" JSON..= name,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Destination where
  toJSON Destination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression,
               "ExpressionType" JSON..= expressionType, "Name" JSON..= name,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Destination where
  type PropertyType "Description" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {description = Prelude.pure newValue, ..}
instance Property "Expression" Destination where
  type PropertyType "Expression" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {expression = newValue, ..}
instance Property "ExpressionType" Destination where
  type PropertyType "ExpressionType" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {expressionType = newValue, ..}
instance Property "Name" Destination where
  type PropertyType "Name" Destination = Value Prelude.Text
  set newValue Destination {..} = Destination {name = newValue, ..}
instance Property "RoleArn" Destination where
  type PropertyType "RoleArn" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {roleArn = newValue, ..}
instance Property "Tags" Destination where
  type PropertyType "Tags" Destination = [Tag]
  set newValue Destination {..}
    = Destination {tags = Prelude.pure newValue, ..}