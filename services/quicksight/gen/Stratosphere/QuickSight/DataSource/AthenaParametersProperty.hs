module Stratosphere.QuickSight.DataSource.AthenaParametersProperty (
        module Exports, AthenaParametersProperty(..),
        mkAthenaParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.IdentityCenterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AthenaParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-athenaparameters.html>
    AthenaParametersProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-athenaparameters.html#cfn-quicksight-datasource-athenaparameters-identitycenterconfiguration>
                              identityCenterConfiguration :: (Prelude.Maybe IdentityCenterConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-athenaparameters.html#cfn-quicksight-datasource-athenaparameters-rolearn>
                              roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-athenaparameters.html#cfn-quicksight-datasource-athenaparameters-workgroup>
                              workGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAthenaParametersProperty :: AthenaParametersProperty
mkAthenaParametersProperty
  = AthenaParametersProperty
      {haddock_workaround_ = (),
       identityCenterConfiguration = Prelude.Nothing,
       roleArn = Prelude.Nothing, workGroup = Prelude.Nothing}
instance ToResourceProperties AthenaParametersProperty where
  toResourceProperties AthenaParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AthenaParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdentityCenterConfiguration"
                              Prelude.<$> identityCenterConfiguration,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "WorkGroup" Prelude.<$> workGroup])}
instance JSON.ToJSON AthenaParametersProperty where
  toJSON AthenaParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdentityCenterConfiguration"
                 Prelude.<$> identityCenterConfiguration,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "WorkGroup" Prelude.<$> workGroup]))
instance Property "IdentityCenterConfiguration" AthenaParametersProperty where
  type PropertyType "IdentityCenterConfiguration" AthenaParametersProperty = IdentityCenterConfigurationProperty
  set newValue AthenaParametersProperty {..}
    = AthenaParametersProperty
        {identityCenterConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" AthenaParametersProperty where
  type PropertyType "RoleArn" AthenaParametersProperty = Value Prelude.Text
  set newValue AthenaParametersProperty {..}
    = AthenaParametersProperty {roleArn = Prelude.pure newValue, ..}
instance Property "WorkGroup" AthenaParametersProperty where
  type PropertyType "WorkGroup" AthenaParametersProperty = Value Prelude.Text
  set newValue AthenaParametersProperty {..}
    = AthenaParametersProperty {workGroup = Prelude.pure newValue, ..}