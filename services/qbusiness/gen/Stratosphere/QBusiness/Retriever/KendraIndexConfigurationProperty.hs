module Stratosphere.QBusiness.Retriever.KendraIndexConfigurationProperty (
        KendraIndexConfigurationProperty(..),
        mkKendraIndexConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KendraIndexConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-kendraindexconfiguration.html>
    KendraIndexConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-kendraindexconfiguration.html#cfn-qbusiness-retriever-kendraindexconfiguration-indexid>
                                      indexId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKendraIndexConfigurationProperty ::
  Value Prelude.Text -> KendraIndexConfigurationProperty
mkKendraIndexConfigurationProperty indexId
  = KendraIndexConfigurationProperty
      {haddock_workaround_ = (), indexId = indexId}
instance ToResourceProperties KendraIndexConfigurationProperty where
  toResourceProperties KendraIndexConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Retriever.KendraIndexConfiguration",
         supportsTags = Prelude.False,
         properties = ["IndexId" JSON..= indexId]}
instance JSON.ToJSON KendraIndexConfigurationProperty where
  toJSON KendraIndexConfigurationProperty {..}
    = JSON.object ["IndexId" JSON..= indexId]
instance Property "IndexId" KendraIndexConfigurationProperty where
  type PropertyType "IndexId" KendraIndexConfigurationProperty = Value Prelude.Text
  set newValue KendraIndexConfigurationProperty {..}
    = KendraIndexConfigurationProperty {indexId = newValue, ..}