module Stratosphere.WAFv2.WebACL.DataProtectionConfigProperty (
        module Exports, DataProtectionConfigProperty(..),
        mkDataProtectionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.DataProtectProperty as Exports
import Stratosphere.ResourceProperties
data DataProtectionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotectionconfig.html>
    DataProtectionConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotectionconfig.html#cfn-wafv2-webacl-dataprotectionconfig-dataprotections>
                                  dataProtections :: [DataProtectProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProtectionConfigProperty ::
  [DataProtectProperty] -> DataProtectionConfigProperty
mkDataProtectionConfigProperty dataProtections
  = DataProtectionConfigProperty
      {haddock_workaround_ = (), dataProtections = dataProtections}
instance ToResourceProperties DataProtectionConfigProperty where
  toResourceProperties DataProtectionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.DataProtectionConfig",
         supportsTags = Prelude.False,
         properties = ["DataProtections" JSON..= dataProtections]}
instance JSON.ToJSON DataProtectionConfigProperty where
  toJSON DataProtectionConfigProperty {..}
    = JSON.object ["DataProtections" JSON..= dataProtections]
instance Property "DataProtections" DataProtectionConfigProperty where
  type PropertyType "DataProtections" DataProtectionConfigProperty = [DataProtectProperty]
  set newValue DataProtectionConfigProperty {..}
    = DataProtectionConfigProperty {dataProtections = newValue, ..}