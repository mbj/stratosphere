module Stratosphere.QuickSight.DataSource.IdentityCenterConfigurationProperty (
        IdentityCenterConfigurationProperty(..),
        mkIdentityCenterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityCenterConfigurationProperty
  = IdentityCenterConfigurationProperty {enableIdentityPropagation :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityCenterConfigurationProperty ::
  IdentityCenterConfigurationProperty
mkIdentityCenterConfigurationProperty
  = IdentityCenterConfigurationProperty
      {enableIdentityPropagation = Prelude.Nothing}
instance ToResourceProperties IdentityCenterConfigurationProperty where
  toResourceProperties IdentityCenterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.IdentityCenterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableIdentityPropagation"
                              Prelude.<$> enableIdentityPropagation])}
instance JSON.ToJSON IdentityCenterConfigurationProperty where
  toJSON IdentityCenterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableIdentityPropagation"
                 Prelude.<$> enableIdentityPropagation]))
instance Property "EnableIdentityPropagation" IdentityCenterConfigurationProperty where
  type PropertyType "EnableIdentityPropagation" IdentityCenterConfigurationProperty = Value Prelude.Bool
  set newValue IdentityCenterConfigurationProperty {}
    = IdentityCenterConfigurationProperty
        {enableIdentityPropagation = Prelude.pure newValue, ..}