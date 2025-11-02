module Stratosphere.QBusiness.Retriever.NativeIndexConfigurationProperty (
        NativeIndexConfigurationProperty(..),
        mkNativeIndexConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NativeIndexConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-nativeindexconfiguration.html>
    NativeIndexConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-retriever-nativeindexconfiguration.html#cfn-qbusiness-retriever-nativeindexconfiguration-indexid>
                                      indexId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNativeIndexConfigurationProperty ::
  Value Prelude.Text -> NativeIndexConfigurationProperty
mkNativeIndexConfigurationProperty indexId
  = NativeIndexConfigurationProperty
      {haddock_workaround_ = (), indexId = indexId}
instance ToResourceProperties NativeIndexConfigurationProperty where
  toResourceProperties NativeIndexConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Retriever.NativeIndexConfiguration",
         supportsTags = Prelude.False,
         properties = ["IndexId" JSON..= indexId]}
instance JSON.ToJSON NativeIndexConfigurationProperty where
  toJSON NativeIndexConfigurationProperty {..}
    = JSON.object ["IndexId" JSON..= indexId]
instance Property "IndexId" NativeIndexConfigurationProperty where
  type PropertyType "IndexId" NativeIndexConfigurationProperty = Value Prelude.Text
  set newValue NativeIndexConfigurationProperty {..}
    = NativeIndexConfigurationProperty {indexId = newValue, ..}