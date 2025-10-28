module Stratosphere.S3.Bucket.WebsiteConfigurationProperty (
        module Exports, WebsiteConfigurationProperty(..),
        mkWebsiteConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.RedirectAllRequestsToProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.RoutingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebsiteConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-websiteconfiguration.html>
    WebsiteConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-websiteconfiguration.html#cfn-s3-bucket-websiteconfiguration-errordocument>
                                  errorDocument :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-websiteconfiguration.html#cfn-s3-bucket-websiteconfiguration-indexdocument>
                                  indexDocument :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-websiteconfiguration.html#cfn-s3-bucket-websiteconfiguration-redirectallrequeststo>
                                  redirectAllRequestsTo :: (Prelude.Maybe RedirectAllRequestsToProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-websiteconfiguration.html#cfn-s3-bucket-websiteconfiguration-routingrules>
                                  routingRules :: (Prelude.Maybe [RoutingRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebsiteConfigurationProperty :: WebsiteConfigurationProperty
mkWebsiteConfigurationProperty
  = WebsiteConfigurationProperty
      {haddock_workaround_ = (), errorDocument = Prelude.Nothing,
       indexDocument = Prelude.Nothing,
       redirectAllRequestsTo = Prelude.Nothing,
       routingRules = Prelude.Nothing}
instance ToResourceProperties WebsiteConfigurationProperty where
  toResourceProperties WebsiteConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.WebsiteConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ErrorDocument" Prelude.<$> errorDocument,
                            (JSON..=) "IndexDocument" Prelude.<$> indexDocument,
                            (JSON..=) "RedirectAllRequestsTo"
                              Prelude.<$> redirectAllRequestsTo,
                            (JSON..=) "RoutingRules" Prelude.<$> routingRules])}
instance JSON.ToJSON WebsiteConfigurationProperty where
  toJSON WebsiteConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ErrorDocument" Prelude.<$> errorDocument,
               (JSON..=) "IndexDocument" Prelude.<$> indexDocument,
               (JSON..=) "RedirectAllRequestsTo"
                 Prelude.<$> redirectAllRequestsTo,
               (JSON..=) "RoutingRules" Prelude.<$> routingRules]))
instance Property "ErrorDocument" WebsiteConfigurationProperty where
  type PropertyType "ErrorDocument" WebsiteConfigurationProperty = Value Prelude.Text
  set newValue WebsiteConfigurationProperty {..}
    = WebsiteConfigurationProperty
        {errorDocument = Prelude.pure newValue, ..}
instance Property "IndexDocument" WebsiteConfigurationProperty where
  type PropertyType "IndexDocument" WebsiteConfigurationProperty = Value Prelude.Text
  set newValue WebsiteConfigurationProperty {..}
    = WebsiteConfigurationProperty
        {indexDocument = Prelude.pure newValue, ..}
instance Property "RedirectAllRequestsTo" WebsiteConfigurationProperty where
  type PropertyType "RedirectAllRequestsTo" WebsiteConfigurationProperty = RedirectAllRequestsToProperty
  set newValue WebsiteConfigurationProperty {..}
    = WebsiteConfigurationProperty
        {redirectAllRequestsTo = Prelude.pure newValue, ..}
instance Property "RoutingRules" WebsiteConfigurationProperty where
  type PropertyType "RoutingRules" WebsiteConfigurationProperty = [RoutingRuleProperty]
  set newValue WebsiteConfigurationProperty {..}
    = WebsiteConfigurationProperty
        {routingRules = Prelude.pure newValue, ..}