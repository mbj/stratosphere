module Stratosphere.Grafana.Workspace.NetworkAccessControlProperty (
        NetworkAccessControlProperty(..), mkNetworkAccessControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkAccessControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-networkaccesscontrol.html>
    NetworkAccessControlProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-networkaccesscontrol.html#cfn-grafana-workspace-networkaccesscontrol-prefixlistids>
                                  prefixListIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-networkaccesscontrol.html#cfn-grafana-workspace-networkaccesscontrol-vpceids>
                                  vpceIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAccessControlProperty :: NetworkAccessControlProperty
mkNetworkAccessControlProperty
  = NetworkAccessControlProperty
      {haddock_workaround_ = (), prefixListIds = Prelude.Nothing,
       vpceIds = Prelude.Nothing}
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