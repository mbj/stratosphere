module Stratosphere.InspectorV2.CisScanConfiguration.CisTargetsProperty (
        CisTargetsProperty(..), mkCisTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CisTargetsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-cistargets.html>
    CisTargetsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-cistargets.html#cfn-inspectorv2-cisscanconfiguration-cistargets-accountids>
                        accountIds :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-cistargets.html#cfn-inspectorv2-cisscanconfiguration-cistargets-targetresourcetags>
                        targetResourceTags :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCisTargetsProperty ::
  ValueList Prelude.Text -> JSON.Object -> CisTargetsProperty
mkCisTargetsProperty accountIds targetResourceTags
  = CisTargetsProperty
      {haddock_workaround_ = (), accountIds = accountIds,
       targetResourceTags = targetResourceTags}
instance ToResourceProperties CisTargetsProperty where
  toResourceProperties CisTargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.CisTargets",
         supportsTags = Prelude.False,
         properties = ["AccountIds" JSON..= accountIds,
                       "TargetResourceTags" JSON..= targetResourceTags]}
instance JSON.ToJSON CisTargetsProperty where
  toJSON CisTargetsProperty {..}
    = JSON.object
        ["AccountIds" JSON..= accountIds,
         "TargetResourceTags" JSON..= targetResourceTags]
instance Property "AccountIds" CisTargetsProperty where
  type PropertyType "AccountIds" CisTargetsProperty = ValueList Prelude.Text
  set newValue CisTargetsProperty {..}
    = CisTargetsProperty {accountIds = newValue, ..}
instance Property "TargetResourceTags" CisTargetsProperty where
  type PropertyType "TargetResourceTags" CisTargetsProperty = JSON.Object
  set newValue CisTargetsProperty {..}
    = CisTargetsProperty {targetResourceTags = newValue, ..}