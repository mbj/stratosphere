module Stratosphere.SES.VdmAttributes.GuardianAttributesProperty (
        GuardianAttributesProperty(..), mkGuardianAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardianAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-vdmattributes-guardianattributes.html>
    GuardianAttributesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-vdmattributes-guardianattributes.html#cfn-ses-vdmattributes-guardianattributes-optimizedshareddelivery>
                                optimizedSharedDelivery :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardianAttributesProperty :: GuardianAttributesProperty
mkGuardianAttributesProperty
  = GuardianAttributesProperty
      {haddock_workaround_ = (),
       optimizedSharedDelivery = Prelude.Nothing}
instance ToResourceProperties GuardianAttributesProperty where
  toResourceProperties GuardianAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::VdmAttributes.GuardianAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OptimizedSharedDelivery"
                              Prelude.<$> optimizedSharedDelivery])}
instance JSON.ToJSON GuardianAttributesProperty where
  toJSON GuardianAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OptimizedSharedDelivery"
                 Prelude.<$> optimizedSharedDelivery]))
instance Property "OptimizedSharedDelivery" GuardianAttributesProperty where
  type PropertyType "OptimizedSharedDelivery" GuardianAttributesProperty = Value Prelude.Text
  set newValue GuardianAttributesProperty {..}
    = GuardianAttributesProperty
        {optimizedSharedDelivery = Prelude.pure newValue, ..}