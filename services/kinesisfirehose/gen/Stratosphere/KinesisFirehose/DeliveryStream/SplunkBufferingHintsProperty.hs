module Stratosphere.KinesisFirehose.DeliveryStream.SplunkBufferingHintsProperty (
        SplunkBufferingHintsProperty(..), mkSplunkBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplunkBufferingHintsProperty
  = SplunkBufferingHintsProperty {intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                  sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplunkBufferingHintsProperty :: SplunkBufferingHintsProperty
mkSplunkBufferingHintsProperty
  = SplunkBufferingHintsProperty
      {intervalInSeconds = Prelude.Nothing, sizeInMBs = Prelude.Nothing}
instance ToResourceProperties SplunkBufferingHintsProperty where
  toResourceProperties SplunkBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SplunkBufferingHints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON SplunkBufferingHintsProperty where
  toJSON SplunkBufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" SplunkBufferingHintsProperty where
  type PropertyType "IntervalInSeconds" SplunkBufferingHintsProperty = Value Prelude.Integer
  set newValue SplunkBufferingHintsProperty {..}
    = SplunkBufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" SplunkBufferingHintsProperty where
  type PropertyType "SizeInMBs" SplunkBufferingHintsProperty = Value Prelude.Integer
  set newValue SplunkBufferingHintsProperty {..}
    = SplunkBufferingHintsProperty
        {sizeInMBs = Prelude.pure newValue, ..}