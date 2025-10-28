module Stratosphere.IoT.Dimension (
        Dimension(..), mkDimension
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dimension
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-dimension.html>
    Dimension {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-dimension.html#cfn-iot-dimension-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-dimension.html#cfn-iot-dimension-stringvalues>
               stringValues :: (ValueList Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-dimension.html#cfn-iot-dimension-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-dimension.html#cfn-iot-dimension-type>
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimension ::
  ValueList Prelude.Text -> Value Prelude.Text -> Dimension
mkDimension stringValues type'
  = Dimension
      {haddock_workaround_ = (), stringValues = stringValues,
       type' = type', name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Dimension where
  toResourceProperties Dimension {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Dimension", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StringValues" JSON..= stringValues, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Dimension where
  toJSON Dimension {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StringValues" JSON..= stringValues, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Dimension where
  type PropertyType "Name" Dimension = Value Prelude.Text
  set newValue Dimension {..}
    = Dimension {name = Prelude.pure newValue, ..}
instance Property "StringValues" Dimension where
  type PropertyType "StringValues" Dimension = ValueList Prelude.Text
  set newValue Dimension {..}
    = Dimension {stringValues = newValue, ..}
instance Property "Tags" Dimension where
  type PropertyType "Tags" Dimension = [Tag]
  set newValue Dimension {..}
    = Dimension {tags = Prelude.pure newValue, ..}
instance Property "Type" Dimension where
  type PropertyType "Type" Dimension = Value Prelude.Text
  set newValue Dimension {..} = Dimension {type' = newValue, ..}