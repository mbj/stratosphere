module Stratosphere.ECR.ReplicationConfiguration.RepositoryFilterProperty (
        RepositoryFilterProperty(..), mkRepositoryFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-repositoryfilter.html>
    RepositoryFilterProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-repositoryfilter.html#cfn-ecr-replicationconfiguration-repositoryfilter-filter>
                              filter :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-repositoryfilter.html#cfn-ecr-replicationconfiguration-repositoryfilter-filtertype>
                              filterType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryFilterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RepositoryFilterProperty
mkRepositoryFilterProperty filter filterType
  = RepositoryFilterProperty
      {haddock_workaround_ = (), filter = filter,
       filterType = filterType}
instance ToResourceProperties RepositoryFilterProperty where
  toResourceProperties RepositoryFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration.RepositoryFilter",
         supportsTags = Prelude.False,
         properties = ["Filter" JSON..= filter,
                       "FilterType" JSON..= filterType]}
instance JSON.ToJSON RepositoryFilterProperty where
  toJSON RepositoryFilterProperty {..}
    = JSON.object
        ["Filter" JSON..= filter, "FilterType" JSON..= filterType]
instance Property "Filter" RepositoryFilterProperty where
  type PropertyType "Filter" RepositoryFilterProperty = Value Prelude.Text
  set newValue RepositoryFilterProperty {..}
    = RepositoryFilterProperty {filter = newValue, ..}
instance Property "FilterType" RepositoryFilterProperty where
  type PropertyType "FilterType" RepositoryFilterProperty = Value Prelude.Text
  set newValue RepositoryFilterProperty {..}
    = RepositoryFilterProperty {filterType = newValue, ..}