module Stratosphere.Grafana.Workspace.NetworkAccessControlProperty (
        NetworkAccessControlProperty(..), mkNetworkAccessControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkAccessControlProperty
  = NetworkAccessControlProperty {prefixListIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  vpceIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkNetworkAccessControlProperty :: NetworkAccessControlProperty
mkNetworkAccessControlProperty
  = NetworkAccessControlProperty
      {prefixListIds = Prelude.Nothing, vpceIds = Prelude.Nothing}
instance ToResourceProperties NetworkAccessControlProperty where
  toResourceProperties NetworkAccessControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace.NetworkAccessControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PrefixListIds" Prelude.<$> prefixListIds,
                            (JSON..=) "VpceIds" Prelude.<$> vpceIds])}
instance JSON.ToJSON NetworkAccessControlProperty where
  toJSON NetworkAccessControlProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PrefixListIds" Prelude.<$> prefixListIds,
               (JSON..=) "VpceIds" Prelude.<$> vpceIds]))
instance Property "PrefixListIds" NetworkAccessControlProperty where
  type PropertyType "PrefixListIds" NetworkAccessControlProperty = ValueList Prelude.Text
  set newValue NetworkAccessControlProperty {..}
    = NetworkAccessControlProperty
        {prefixListIds = Prelude.pure newValue, ..}
instance Property "VpceIds" NetworkAccessControlProperty where
  type PropertyType "VpceIds" NetworkAccessControlProperty = ValueList Prelude.Text
  set newValue NetworkAccessControlProperty {..}
    = NetworkAccessControlProperty
        {vpceIds = Prelude.pure newValue, ..}