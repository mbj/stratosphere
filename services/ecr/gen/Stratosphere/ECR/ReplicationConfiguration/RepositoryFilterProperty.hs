module Stratosphere.ECR.ReplicationConfiguration.RepositoryFilterProperty (
        RepositoryFilterProperty(..), mkRepositoryFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryFilterProperty
  = RepositoryFilterProperty {filter :: (Value Prelude.Text),
                              filterType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryFilterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RepositoryFilterProperty
mkRepositoryFilterProperty filter filterType
  = RepositoryFilterProperty
      {filter = filter, filterType = filterType}
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