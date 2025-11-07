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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-paginationconfiguration.html>
    PaginationConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-paginationconfiguration.html#cfn-quicksight-analysis-paginationconfiguration-pagenumber>
                                     pageNumber :: (Value Prelude.Double),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-paginationconfiguration.html#cfn-quicksight-analysis-paginationconfiguration-pagesize>
                                     pageSize :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPaginationConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> PaginationConfigurationProperty
mkPaginationConfigurationProperty pageNumber pageSize
  = PaginationConfigurationProperty
      {haddock_workaround_ = (), pageNumber = pageNumber,
       pageSize = pageSize}
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