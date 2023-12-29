module Stratosphere.QuickSight.Analysis.PaginationConfigurationProperty (
        PaginationConfigurationProperty(..),
        mkPaginationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PaginationConfigurationProperty
  = PaginationConfigurationProperty {pageNumber :: (Value Prelude.Double),
                                     pageSize :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPaginationConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> PaginationConfigurationProperty
mkPaginationConfigurationProperty pageNumber pageSize
  = PaginationConfigurationProperty
      {pageNumber = pageNumber, pageSize = pageSize}
instance ToResourceProperties PaginationConfigurationProperty where
  toResourceProperties PaginationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PaginationConfiguration",
         supportsTags = Prelude.False,
         properties = ["PageNumber" JSON..= pageNumber,
                       "PageSize" JSON..= pageSize]}
instance JSON.ToJSON PaginationConfigurationProperty where
  toJSON PaginationConfigurationProperty {..}
    = JSON.object
        ["PageNumber" JSON..= pageNumber, "PageSize" JSON..= pageSize]
instance Property "PageNumber" PaginationConfigurationProperty where
  type PropertyType "PageNumber" PaginationConfigurationProperty = Value Prelude.Double
  set newValue PaginationConfigurationProperty {..}
    = PaginationConfigurationProperty {pageNumber = newValue, ..}
instance Property "PageSize" PaginationConfigurationProperty where
  type PropertyType "PageSize" PaginationConfigurationProperty = Value Prelude.Double
  set newValue PaginationConfigurationProperty {..}
    = PaginationConfigurationProperty {pageSize = newValue, ..}