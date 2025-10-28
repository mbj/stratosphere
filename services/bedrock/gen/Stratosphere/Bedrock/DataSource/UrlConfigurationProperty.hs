module Stratosphere.Bedrock.DataSource.UrlConfigurationProperty (
        module Exports, UrlConfigurationProperty(..),
        mkUrlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SeedUrlProperty as Exports
import Stratosphere.ResourceProperties
data UrlConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-urlconfiguration.html>
    UrlConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-urlconfiguration.html#cfn-bedrock-datasource-urlconfiguration-seedurls>
                              seedUrls :: [SeedUrlProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUrlConfigurationProperty ::
  [SeedUrlProperty] -> UrlConfigurationProperty
mkUrlConfigurationProperty seedUrls
  = UrlConfigurationProperty
      {haddock_workaround_ = (), seedUrls = seedUrls}
instance ToResourceProperties UrlConfigurationProperty where
  toResourceProperties UrlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.UrlConfiguration",
         supportsTags = Prelude.False,
         properties = ["SeedUrls" JSON..= seedUrls]}
instance JSON.ToJSON UrlConfigurationProperty where
  toJSON UrlConfigurationProperty {..}
    = JSON.object ["SeedUrls" JSON..= seedUrls]
instance Property "SeedUrls" UrlConfigurationProperty where
  type PropertyType "SeedUrls" UrlConfigurationProperty = [SeedUrlProperty]
  set newValue UrlConfigurationProperty {..}
    = UrlConfigurationProperty {seedUrls = newValue, ..}