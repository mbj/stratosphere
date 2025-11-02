module Stratosphere.Rekognition.StreamProcessor.BoundingBoxProperty (
        BoundingBoxProperty(..), mkBoundingBoxProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BoundingBoxProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-boundingbox.html>
    BoundingBoxProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-boundingbox.html#cfn-rekognition-streamprocessor-boundingbox-height>
                         height :: (Value Prelude.Double),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-boundingbox.html#cfn-rekognition-streamprocessor-boundingbox-left>
                         left :: (Value Prelude.Double),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-boundingbox.html#cfn-rekognition-streamprocessor-boundingbox-top>
                         top :: (Value Prelude.Double),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-boundingbox.html#cfn-rekognition-streamprocessor-boundingbox-width>
                         width :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoundingBoxProperty ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Double
        -> Value Prelude.Double -> BoundingBoxProperty
mkBoundingBoxProperty height left top width
  = BoundingBoxProperty
      {haddock_workaround_ = (), height = height, left = left, top = top,
       width = width}
instance ToResourceProperties BoundingBoxProperty where
  toResourceProperties BoundingBoxProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.BoundingBox",
         supportsTags = Prelude.False,
         properties = ["Height" JSON..= height, "Left" JSON..= left,
                       "Top" JSON..= top, "Width" JSON..= width]}
instance JSON.ToJSON BoundingBoxProperty where
  toJSON BoundingBoxProperty {..}
    = JSON.object
        ["Height" JSON..= height, "Left" JSON..= left, "Top" JSON..= top,
         "Width" JSON..= width]
instance Property "Height" BoundingBoxProperty where
  type PropertyType "Height" BoundingBoxProperty = Value Prelude.Double
  set newValue BoundingBoxProperty {..}
    = BoundingBoxProperty {height = newValue, ..}
instance Property "Left" BoundingBoxProperty where
  type PropertyType "Left" BoundingBoxProperty = Value Prelude.Double
  set newValue BoundingBoxProperty {..}
    = BoundingBoxProperty {left = newValue, ..}
instance Property "Top" BoundingBoxProperty where
  type PropertyType "Top" BoundingBoxProperty = Value Prelude.Double
  set newValue BoundingBoxProperty {..}
    = BoundingBoxProperty {top = newValue, ..}
instance Property "Width" BoundingBoxProperty where
  type PropertyType "Width" BoundingBoxProperty = Value Prelude.Double
  set newValue BoundingBoxProperty {..}
    = BoundingBoxProperty {width = newValue, ..}