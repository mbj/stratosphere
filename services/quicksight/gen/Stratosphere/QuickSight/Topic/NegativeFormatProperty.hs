module Stratosphere.QuickSight.Topic.NegativeFormatProperty (
        NegativeFormatProperty(..), mkNegativeFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NegativeFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-negativeformat.html>
    NegativeFormatProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-negativeformat.html#cfn-quicksight-topic-negativeformat-prefix>
                            prefix :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-negativeformat.html#cfn-quicksight-topic-negativeformat-suffix>
                            suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNegativeFormatProperty :: NegativeFormatProperty
mkNegativeFormatProperty
  = NegativeFormatProperty
      {haddock_workaround_ = (), prefix = Prelude.Nothing,
       suffix = Prelude.Nothing}
instance ToResourceProperties NegativeFormatProperty where
  toResourceProperties NegativeFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.NegativeFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON NegativeFormatProperty where
  toJSON NegativeFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Prefix" NegativeFormatProperty where
  type PropertyType "Prefix" NegativeFormatProperty = Value Prelude.Text
  set newValue NegativeFormatProperty {..}
    = NegativeFormatProperty {prefix = Prelude.pure newValue, ..}
instance Property "Suffix" NegativeFormatProperty where
  type PropertyType "Suffix" NegativeFormatProperty = Value Prelude.Text
  set newValue NegativeFormatProperty {..}
    = NegativeFormatProperty {suffix = Prelude.pure newValue, ..}