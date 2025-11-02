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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html>
    Destination {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html#cfn-iotwireless-destination-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html#cfn-iotwireless-destination-expression>
                 expression :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html#cfn-iotwireless-destination-expressiontype>
                 expressionType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html#cfn-iotwireless-destination-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html#cfn-iotwireless-destination-rolearn>
                 roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-destination.html#cfn-iotwireless-destination-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestination ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Destination
mkDestination expression expressionType name
  = Destination
      {haddock_workaround_ = (), expression = expression,
       expressionType = expressionType, name = name,
       description = Prelude.Nothing, roleArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Destination where
  toResourceProperties Destination {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::Destination",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression,
                            "ExpressionType" JSON..= expressionType, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Destination where
  toJSON Destination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression,
               "ExpressionType" JSON..= expressionType, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
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
    = Destination {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Destination where
  type PropertyType "Tags" Destination = [Tag]
  set newValue Destination {..}
    = Destination {tags = Prelude.pure newValue, ..}