module Stratosphere.MediaPackageV2.OriginEndpoint.StartTagProperty (
        StartTagProperty(..), mkStartTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StartTagProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-starttag.html>
    StartTagProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-starttag.html#cfn-mediapackagev2-originendpoint-starttag-precise>
                      precise :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-starttag.html#cfn-mediapackagev2-originendpoint-starttag-timeoffset>
                      timeOffset :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStartTagProperty :: Value Prelude.Double -> StartTagProperty
mkStartTagProperty timeOffset
  = StartTagProperty
      {haddock_workaround_ = (), timeOffset = timeOffset,
       precise = Prelude.Nothing}
instance ToResourceProperties StartTagProperty where
  toResourceProperties StartTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.StartTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TimeOffset" JSON..= timeOffset]
                           (Prelude.catMaybes [(JSON..=) "Precise" Prelude.<$> precise]))}
instance JSON.ToJSON StartTagProperty where
  toJSON StartTagProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TimeOffset" JSON..= timeOffset]
              (Prelude.catMaybes [(JSON..=) "Precise" Prelude.<$> precise])))
instance Property "Precise" StartTagProperty where
  type PropertyType "Precise" StartTagProperty = Value Prelude.Bool
  set newValue StartTagProperty {..}
    = StartTagProperty {precise = Prelude.pure newValue, ..}
instance Property "TimeOffset" StartTagProperty where
  type PropertyType "TimeOffset" StartTagProperty = Value Prelude.Double
  set newValue StartTagProperty {..}
    = StartTagProperty {timeOffset = newValue, ..}