module Stratosphere.EC2.LaunchTemplate.HibernationOptionsProperty (
        HibernationOptionsProperty(..), mkHibernationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HibernationOptionsProperty
  = HibernationOptionsProperty {configured :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHibernationOptionsProperty :: HibernationOptionsProperty
mkHibernationOptionsProperty
  = HibernationOptionsProperty {configured = Prelude.Nothing}
instance ToResourceProperties HibernationOptionsProperty where
  toResourceProperties HibernationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.HibernationOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configured" Prelude.<$> configured])}
instance JSON.ToJSON HibernationOptionsProperty where
  toJSON HibernationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configured" Prelude.<$> configured]))
instance Property "Configured" HibernationOptionsProperty where
  type PropertyType "Configured" HibernationOptionsProperty = Value Prelude.Bool
  set newValue HibernationOptionsProperty {}
    = HibernationOptionsProperty
        {configured = Prelude.pure newValue, ..}