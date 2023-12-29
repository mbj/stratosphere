module Stratosphere.NimbleStudio.StreamingImage (
        StreamingImage(..), mkStreamingImage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamingImage
  = StreamingImage {description :: (Prelude.Maybe (Value Prelude.Text)),
                    ec2ImageId :: (Value Prelude.Text),
                    name :: (Value Prelude.Text),
                    studioId :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamingImage ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> StreamingImage
mkStreamingImage ec2ImageId name studioId
  = StreamingImage
      {ec2ImageId = ec2ImageId, name = name, studioId = studioId,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties StreamingImage where
  toResourceProperties StreamingImage {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StreamingImage",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ec2ImageId" JSON..= ec2ImageId, "Name" JSON..= name,
                            "StudioId" JSON..= studioId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StreamingImage where
  toJSON StreamingImage {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ec2ImageId" JSON..= ec2ImageId, "Name" JSON..= name,
               "StudioId" JSON..= studioId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" StreamingImage where
  type PropertyType "Description" StreamingImage = Value Prelude.Text
  set newValue StreamingImage {..}
    = StreamingImage {description = Prelude.pure newValue, ..}
instance Property "Ec2ImageId" StreamingImage where
  type PropertyType "Ec2ImageId" StreamingImage = Value Prelude.Text
  set newValue StreamingImage {..}
    = StreamingImage {ec2ImageId = newValue, ..}
instance Property "Name" StreamingImage where
  type PropertyType "Name" StreamingImage = Value Prelude.Text
  set newValue StreamingImage {..}
    = StreamingImage {name = newValue, ..}
instance Property "StudioId" StreamingImage where
  type PropertyType "StudioId" StreamingImage = Value Prelude.Text
  set newValue StreamingImage {..}
    = StreamingImage {studioId = newValue, ..}
instance Property "Tags" StreamingImage where
  type PropertyType "Tags" StreamingImage = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue StreamingImage {..}
    = StreamingImage {tags = Prelude.pure newValue, ..}