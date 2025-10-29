module Stratosphere.MediaPackage.PackagingConfiguration.StreamSelectionProperty (
        StreamSelectionProperty(..), mkStreamSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamSelectionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-streamselection.html>
    StreamSelectionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-streamselection.html#cfn-mediapackage-packagingconfiguration-streamselection-maxvideobitspersecond>
                             maxVideoBitsPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-streamselection.html#cfn-mediapackage-packagingconfiguration-streamselection-minvideobitspersecond>
                             minVideoBitsPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-streamselection.html#cfn-mediapackage-packagingconfiguration-streamselection-streamorder>
                             streamOrder :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamSelectionProperty :: StreamSelectionProperty
mkStreamSelectionProperty
  = StreamSelectionProperty
      {maxVideoBitsPerSecond = Prelude.Nothing,
       minVideoBitsPerSecond = Prelude.Nothing,
       streamOrder = Prelude.Nothing}
instance ToResourceProperties StreamSelectionProperty where
  toResourceProperties StreamSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.StreamSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxVideoBitsPerSecond"
                              Prelude.<$> maxVideoBitsPerSecond,
                            (JSON..=) "MinVideoBitsPerSecond"
                              Prelude.<$> minVideoBitsPerSecond,
                            (JSON..=) "StreamOrder" Prelude.<$> streamOrder])}
instance JSON.ToJSON StreamSelectionProperty where
  toJSON StreamSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxVideoBitsPerSecond"
                 Prelude.<$> maxVideoBitsPerSecond,
               (JSON..=) "MinVideoBitsPerSecond"
                 Prelude.<$> minVideoBitsPerSecond,
               (JSON..=) "StreamOrder" Prelude.<$> streamOrder]))
instance Property "MaxVideoBitsPerSecond" StreamSelectionProperty where
  type PropertyType "MaxVideoBitsPerSecond" StreamSelectionProperty = Value Prelude.Integer
  set newValue StreamSelectionProperty {..}
    = StreamSelectionProperty
        {maxVideoBitsPerSecond = Prelude.pure newValue, ..}
instance Property "MinVideoBitsPerSecond" StreamSelectionProperty where
  type PropertyType "MinVideoBitsPerSecond" StreamSelectionProperty = Value Prelude.Integer
  set newValue StreamSelectionProperty {..}
    = StreamSelectionProperty
        {minVideoBitsPerSecond = Prelude.pure newValue, ..}
instance Property "StreamOrder" StreamSelectionProperty where
  type PropertyType "StreamOrder" StreamSelectionProperty = Value Prelude.Text
  set newValue StreamSelectionProperty {..}
    = StreamSelectionProperty {streamOrder = Prelude.pure newValue, ..}