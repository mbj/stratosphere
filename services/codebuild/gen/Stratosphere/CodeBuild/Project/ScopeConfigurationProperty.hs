module Stratosphere.CodeBuild.Project.ScopeConfigurationProperty (
        ScopeConfigurationProperty(..), mkScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScopeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-scopeconfiguration.html>
    ScopeConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-scopeconfiguration.html#cfn-codebuild-project-scopeconfiguration-name>
                                name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScopeConfigurationProperty ::
  Value Prelude.Text -> ScopeConfigurationProperty
mkScopeConfigurationProperty name
  = ScopeConfigurationProperty
      {haddock_workaround_ = (), name = name}
instance ToResourceProperties ScopeConfigurationProperty where
  toResourceProperties ScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ScopeConfiguration",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON ScopeConfigurationProperty where
  toJSON ScopeConfigurationProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" ScopeConfigurationProperty where
  type PropertyType "Name" ScopeConfigurationProperty = Value Prelude.Text
  set newValue ScopeConfigurationProperty {..}
    = ScopeConfigurationProperty {name = newValue, ..}