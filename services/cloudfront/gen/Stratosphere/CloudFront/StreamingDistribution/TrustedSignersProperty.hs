module Stratosphere.CloudFront.StreamingDistribution.TrustedSignersProperty (
        TrustedSignersProperty(..), mkTrustedSignersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrustedSignersProperty
  = TrustedSignersProperty {awsAccountNumbers :: (Prelude.Maybe (ValueList Prelude.Text)),
                            enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustedSignersProperty ::
  Value Prelude.Bool -> TrustedSignersProperty
mkTrustedSignersProperty enabled
  = TrustedSignersProperty
      {enabled = enabled, awsAccountNumbers = Prelude.Nothing}
instance ToResourceProperties TrustedSignersProperty where
  toResourceProperties TrustedSignersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::StreamingDistribution.TrustedSigners",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsAccountNumbers" Prelude.<$> awsAccountNumbers]))}
instance JSON.ToJSON TrustedSignersProperty where
  toJSON TrustedSignersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "AwsAccountNumbers" Prelude.<$> awsAccountNumbers])))
instance Property "AwsAccountNumbers" TrustedSignersProperty where
  type PropertyType "AwsAccountNumbers" TrustedSignersProperty = ValueList Prelude.Text
  set newValue TrustedSignersProperty {..}
    = TrustedSignersProperty
        {awsAccountNumbers = Prelude.pure newValue, ..}
instance Property "Enabled" TrustedSignersProperty where
  type PropertyType "Enabled" TrustedSignersProperty = Value Prelude.Bool
  set newValue TrustedSignersProperty {..}
    = TrustedSignersProperty {enabled = newValue, ..}