module Stratosphere.ECR.RegistryScanningConfiguration.ScanningRuleProperty (
        module Exports, ScanningRuleProperty(..), mkScanningRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.RegistryScanningConfiguration.RepositoryFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScanningRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-registryscanningconfiguration-scanningrule.html>
    ScanningRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-registryscanningconfiguration-scanningrule.html#cfn-ecr-registryscanningconfiguration-scanningrule-repositoryfilters>
                          repositoryFilters :: [RepositoryFilterProperty],
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-registryscanningconfiguration-scanningrule.html#cfn-ecr-registryscanningconfiguration-scanningrule-scanfrequency>
                          scanFrequency :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScanningRuleProperty ::
  [RepositoryFilterProperty]
  -> Value Prelude.Text -> ScanningRuleProperty
mkScanningRuleProperty repositoryFilters scanFrequency
  = ScanningRuleProperty
      {haddock_workaround_ = (), repositoryFilters = repositoryFilters,
       scanFrequency = scanFrequency}
instance ToResourceProperties ScanningRuleProperty where
  toResourceProperties ScanningRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::RegistryScanningConfiguration.ScanningRule",
         supportsTags = Prelude.False,
         properties = ["RepositoryFilters" JSON..= repositoryFilters,
                       "ScanFrequency" JSON..= scanFrequency]}
instance JSON.ToJSON ScanningRuleProperty where
  toJSON ScanningRuleProperty {..}
    = JSON.object
        ["RepositoryFilters" JSON..= repositoryFilters,
         "ScanFrequency" JSON..= scanFrequency]
instance Property "RepositoryFilters" ScanningRuleProperty where
  type PropertyType "RepositoryFilters" ScanningRuleProperty = [RepositoryFilterProperty]
  set newValue ScanningRuleProperty {..}
    = ScanningRuleProperty {repositoryFilters = newValue, ..}
instance Property "ScanFrequency" ScanningRuleProperty where
  type PropertyType "ScanFrequency" ScanningRuleProperty = Value Prelude.Text
  set newValue ScanningRuleProperty {..}
    = ScanningRuleProperty {scanFrequency = newValue, ..}