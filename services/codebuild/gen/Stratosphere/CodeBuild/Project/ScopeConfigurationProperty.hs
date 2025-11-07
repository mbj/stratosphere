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
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-scopeconfiguration.html#cfn-codebuild-project-scopeconfiguration-domain>
                                domain :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-scopeconfiguration.html#cfn-codebuild-project-scopeconfiguration-name>
                                name :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-scopeconfiguration.html#cfn-codebuild-project-scopeconfiguration-scope>
                                scope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScopeConfigurationProperty ::
  Value Prelude.Text -> ScopeConfigurationProperty
mkScopeConfigurationProperty name
  = ScopeConfigurationProperty
      {haddock_workaround_ = (), name = name, domain = Prelude.Nothing,
       scope = Prelude.Nothing}
instance ToResourceProperties ScopeConfigurationProperty where
  toResourceProperties ScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.ScopeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "Scope" Prelude.<$> scope]))}
instance JSON.ToJSON ScopeConfigurationProperty where
  toJSON ScopeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "Scope" Prelude.<$> scope])))
instance Property "Domain" ScopeConfigurationProperty where
  type PropertyType "Domain" ScopeConfigurationProperty = Value Prelude.Text
  set newValue ScopeConfigurationProperty {..}
    = ScopeConfigurationProperty {domain = Prelude.pure newValue, ..}
instance Property "Name" ScopeConfigurationProperty where
  type PropertyType "Name" ScopeConfigurationProperty = Value Prelude.Text
  set newValue ScopeConfigurationProperty {..}
    = ScopeConfigurationProperty {name = newValue, ..}
instance Property "Scope" ScopeConfigurationProperty where
  type PropertyType "Scope" ScopeConfigurationProperty = Value Prelude.Text
  set newValue ScopeConfigurationProperty {..}
    = ScopeConfigurationProperty {scope = Prelude.pure newValue, ..}