module Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessBufferingHintsProperty (
        AmazonOpenSearchServerlessBufferingHintsProperty(..),
        mkAmazonOpenSearchServerlessBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonOpenSearchServerlessBufferingHintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessbufferinghints.html>
    AmazonOpenSearchServerlessBufferingHintsProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessbufferinghints.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessbufferinghints-intervalinseconds>
                                                      intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessbufferinghints.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessbufferinghints-sizeinmbs>
                                                      sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonOpenSearchServerlessBufferingHintsProperty ::
  AmazonOpenSearchServerlessBufferingHintsProperty
mkAmazonOpenSearchServerlessBufferingHintsProperty
  = AmazonOpenSearchServerlessBufferingHintsProperty
      {haddock_workaround_ = (), intervalInSeconds = Prelude.Nothing,
       sizeInMBs = Prelude.Nothing}
instance ToResourceProperties AmazonOpenSearchServerlessBufferingHintsProperty where
  toResourceProperties
    AmazonOpenSearchServerlessBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonOpenSearchServerlessBufferingHints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON AmazonOpenSearchServerlessBufferingHintsProperty where
  toJSON AmazonOpenSearchServerlessBufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" AmazonOpenSearchServerlessBufferingHintsProperty where
  type PropertyType "IntervalInSeconds" AmazonOpenSearchServerlessBufferingHintsProperty = Value Prelude.Integer
  set newValue AmazonOpenSearchServerlessBufferingHintsProperty {..}
    = AmazonOpenSearchServerlessBufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" AmazonOpenSearchServerlessBufferingHintsProperty where
  type PropertyType "SizeInMBs" AmazonOpenSearchServerlessBufferingHintsProperty = Value Prelude.Integer
  set newValue AmazonOpenSearchServerlessBufferingHintsProperty {..}
    = AmazonOpenSearchServerlessBufferingHintsProperty
        {sizeInMBs = Prelude.pure newValue, ..}