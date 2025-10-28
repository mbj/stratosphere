module Stratosphere.HealthLake.FHIRDatastore.PreloadDataConfigProperty (
        PreloadDataConfigProperty(..), mkPreloadDataConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PreloadDataConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-preloaddataconfig.html>
    PreloadDataConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-preloaddataconfig.html#cfn-healthlake-fhirdatastore-preloaddataconfig-preloaddatatype>
                               preloadDataType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreloadDataConfigProperty ::
  Value Prelude.Text -> PreloadDataConfigProperty
mkPreloadDataConfigProperty preloadDataType
  = PreloadDataConfigProperty
      {haddock_workaround_ = (), preloadDataType = preloadDataType}
instance ToResourceProperties PreloadDataConfigProperty where
  toResourceProperties PreloadDataConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore.PreloadDataConfig",
         supportsTags = Prelude.False,
         properties = ["PreloadDataType" JSON..= preloadDataType]}
instance JSON.ToJSON PreloadDataConfigProperty where
  toJSON PreloadDataConfigProperty {..}
    = JSON.object ["PreloadDataType" JSON..= preloadDataType]
instance Property "PreloadDataType" PreloadDataConfigProperty where
  type PropertyType "PreloadDataType" PreloadDataConfigProperty = Value Prelude.Text
  set newValue PreloadDataConfigProperty {..}
    = PreloadDataConfigProperty {preloadDataType = newValue, ..}