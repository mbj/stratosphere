module Stratosphere.EKS.Cluster.ProviderProperty (
        ProviderProperty(..), mkProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProviderProperty
  = ProviderProperty {keyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProviderProperty :: ProviderProperty
mkProviderProperty = ProviderProperty {keyArn = Prelude.Nothing}
instance ToResourceProperties ProviderProperty where
  toResourceProperties ProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.Provider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn])}
instance JSON.ToJSON ProviderProperty where
  toJSON ProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn]))
instance Property "KeyArn" ProviderProperty where
  type PropertyType "KeyArn" ProviderProperty = Value Prelude.Text
  set newValue ProviderProperty {}
    = ProviderProperty {keyArn = Prelude.pure newValue, ..}