module Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceBufferingHintsProperty (
        AmazonopensearchserviceBufferingHintsProperty(..),
        mkAmazonopensearchserviceBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonopensearchserviceBufferingHintsProperty
  = AmazonopensearchserviceBufferingHintsProperty {intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
mkAmazonopensearchserviceBufferingHintsProperty ::
  AmazonopensearchserviceBufferingHintsProperty
mkAmazonopensearchserviceBufferingHintsProperty
  = AmazonopensearchserviceBufferingHintsProperty
      {intervalInSeconds = Prelude.Nothing, sizeInMBs = Prelude.Nothing}
instance ToResourceProperties AmazonopensearchserviceBufferingHintsProperty where
  toResourceProperties
    AmazonopensearchserviceBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonopensearchserviceBufferingHints",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON AmazonopensearchserviceBufferingHintsProperty where
  toJSON AmazonopensearchserviceBufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" AmazonopensearchserviceBufferingHintsProperty where
  type PropertyType "IntervalInSeconds" AmazonopensearchserviceBufferingHintsProperty = Value Prelude.Integer
  set newValue AmazonopensearchserviceBufferingHintsProperty {..}
    = AmazonopensearchserviceBufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" AmazonopensearchserviceBufferingHintsProperty where
  type PropertyType "SizeInMBs" AmazonopensearchserviceBufferingHintsProperty = Value Prelude.Integer
  set newValue AmazonopensearchserviceBufferingHintsProperty {..}
    = AmazonopensearchserviceBufferingHintsProperty
        {sizeInMBs = Prelude.pure newValue, ..}