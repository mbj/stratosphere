module Stratosphere.ApplicationSignals.ServiceLevelObjective.DependencyConfigProperty (
        DependencyConfigProperty(..), mkDependencyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DependencyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-dependencyconfig.html>
    DependencyConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-dependencyconfig.html#cfn-applicationsignals-servicelevelobjective-dependencyconfig-dependencykeyattributes>
                              dependencyKeyAttributes :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-dependencyconfig.html#cfn-applicationsignals-servicelevelobjective-dependencyconfig-dependencyoperationname>
                              dependencyOperationName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDependencyConfigProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> DependencyConfigProperty
mkDependencyConfigProperty
  dependencyKeyAttributes
  dependencyOperationName
  = DependencyConfigProperty
      {haddock_workaround_ = (),
       dependencyKeyAttributes = dependencyKeyAttributes,
       dependencyOperationName = dependencyOperationName}
instance ToResourceProperties DependencyConfigProperty where
  toResourceProperties DependencyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.DependencyConfig",
         supportsTags = Prelude.False,
         properties = ["DependencyKeyAttributes"
                         JSON..= dependencyKeyAttributes,
                       "DependencyOperationName" JSON..= dependencyOperationName]}
instance JSON.ToJSON DependencyConfigProperty where
  toJSON DependencyConfigProperty {..}
    = JSON.object
        ["DependencyKeyAttributes" JSON..= dependencyKeyAttributes,
         "DependencyOperationName" JSON..= dependencyOperationName]
instance Property "DependencyKeyAttributes" DependencyConfigProperty where
  type PropertyType "DependencyKeyAttributes" DependencyConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DependencyConfigProperty {..}
    = DependencyConfigProperty {dependencyKeyAttributes = newValue, ..}
instance Property "DependencyOperationName" DependencyConfigProperty where
  type PropertyType "DependencyOperationName" DependencyConfigProperty = Value Prelude.Text
  set newValue DependencyConfigProperty {..}
    = DependencyConfigProperty {dependencyOperationName = newValue, ..}