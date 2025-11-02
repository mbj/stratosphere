module Stratosphere.Config.ConfigurationRecorder.ExclusionByResourceTypesProperty (
        ExclusionByResourceTypesProperty(..),
        mkExclusionByResourceTypesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExclusionByResourceTypesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-exclusionbyresourcetypes.html>
    ExclusionByResourceTypesProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-exclusionbyresourcetypes.html#cfn-config-configurationrecorder-exclusionbyresourcetypes-resourcetypes>
                                      resourceTypes :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExclusionByResourceTypesProperty ::
  ValueList Prelude.Text -> ExclusionByResourceTypesProperty
mkExclusionByResourceTypesProperty resourceTypes
  = ExclusionByResourceTypesProperty
      {haddock_workaround_ = (), resourceTypes = resourceTypes}
instance ToResourceProperties ExclusionByResourceTypesProperty where
  toResourceProperties ExclusionByResourceTypesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.ExclusionByResourceTypes",
         supportsTags = Prelude.False,
         properties = ["ResourceTypes" JSON..= resourceTypes]}
instance JSON.ToJSON ExclusionByResourceTypesProperty where
  toJSON ExclusionByResourceTypesProperty {..}
    = JSON.object ["ResourceTypes" JSON..= resourceTypes]
instance Property "ResourceTypes" ExclusionByResourceTypesProperty where
  type PropertyType "ResourceTypes" ExclusionByResourceTypesProperty = ValueList Prelude.Text
  set newValue ExclusionByResourceTypesProperty {..}
    = ExclusionByResourceTypesProperty {resourceTypes = newValue, ..}