module Stratosphere.AIOps.InvestigationGroup.CrossAccountConfigurationProperty (
        CrossAccountConfigurationProperty(..),
        mkCrossAccountConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossAccountConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-crossaccountconfiguration.html>
    CrossAccountConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-crossaccountconfiguration.html#cfn-aiops-investigationgroup-crossaccountconfiguration-sourcerolearn>
                                       sourceRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossAccountConfigurationProperty ::
  CrossAccountConfigurationProperty
mkCrossAccountConfigurationProperty
  = CrossAccountConfigurationProperty
      {haddock_workaround_ = (), sourceRoleArn = Prelude.Nothing}
instance ToResourceProperties CrossAccountConfigurationProperty where
  toResourceProperties CrossAccountConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AIOps::InvestigationGroup.CrossAccountConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceRoleArn" Prelude.<$> sourceRoleArn])}
instance JSON.ToJSON CrossAccountConfigurationProperty where
  toJSON CrossAccountConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceRoleArn" Prelude.<$> sourceRoleArn]))
instance Property "SourceRoleArn" CrossAccountConfigurationProperty where
  type PropertyType "SourceRoleArn" CrossAccountConfigurationProperty = Value Prelude.Text
  set newValue CrossAccountConfigurationProperty {..}
    = CrossAccountConfigurationProperty
        {sourceRoleArn = Prelude.pure newValue, ..}