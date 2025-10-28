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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchservicebufferinghints.html>
    AmazonopensearchserviceBufferingHintsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchservicebufferinghints.html#cfn-kinesisfirehose-deliverystream-amazonopensearchservicebufferinghints-intervalinseconds>
                                                   intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchservicebufferinghints.html#cfn-kinesisfirehose-deliverystream-amazonopensearchservicebufferinghints-sizeinmbs>
                                                   sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonopensearchserviceBufferingHintsProperty ::
  AmazonopensearchserviceBufferingHintsProperty
mkAmazonopensearchserviceBufferingHintsProperty
  = AmazonopensearchserviceBufferingHintsProperty
      {haddock_workaround_ = (), intervalInSeconds = Prelude.Nothing,
       sizeInMBs = Prelude.Nothing}
instance ToResourceProperties AmazonopensearchserviceBufferingHintsProperty where
  toResourceProperties
    AmazonopensearchserviceBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonopensearchserviceBufferingHints",
         supportsTags = Prelude.False,
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