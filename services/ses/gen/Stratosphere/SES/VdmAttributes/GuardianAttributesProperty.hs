module Stratosphere.SES.VdmAttributes.GuardianAttributesProperty (
        GuardianAttributesProperty(..), mkGuardianAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardianAttributesProperty
  = GuardianAttributesProperty {optimizedSharedDelivery :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGuardianAttributesProperty :: GuardianAttributesProperty
mkGuardianAttributesProperty
  = GuardianAttributesProperty
      {optimizedSharedDelivery = Prelude.Nothing}
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
  set newValue GuardianAttributesProperty {}
    = GuardianAttributesProperty
        {optimizedSharedDelivery = Prelude.pure newValue, ..}