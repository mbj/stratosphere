module Stratosphere.AppFlow.Flow.SAPODataPaginationConfigProperty (
        SAPODataPaginationConfigProperty(..),
        mkSAPODataPaginationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataPaginationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatapaginationconfig.html>
    SAPODataPaginationConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-sapodatapaginationconfig.html#cfn-appflow-flow-sapodatapaginationconfig-maxpagesize>
                                      maxPageSize :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAPODataPaginationConfigProperty ::
  Value Prelude.Integer -> SAPODataPaginationConfigProperty
mkSAPODataPaginationConfigProperty maxPageSize
  = SAPODataPaginationConfigProperty
      {haddock_workaround_ = (), maxPageSize = maxPageSize}
instance ToResourceProperties SAPODataPaginationConfigProperty where
  toResourceProperties SAPODataPaginationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SAPODataPaginationConfig",
         supportsTags = Prelude.False,
         properties = ["maxPageSize" JSON..= maxPageSize]}
instance JSON.ToJSON SAPODataPaginationConfigProperty where
  toJSON SAPODataPaginationConfigProperty {..}
    = JSON.object ["maxPageSize" JSON..= maxPageSize]
instance Property "maxPageSize" SAPODataPaginationConfigProperty where
  type PropertyType "maxPageSize" SAPODataPaginationConfigProperty = Value Prelude.Integer
  set newValue SAPODataPaginationConfigProperty {..}
    = SAPODataPaginationConfigProperty {maxPageSize = newValue, ..}