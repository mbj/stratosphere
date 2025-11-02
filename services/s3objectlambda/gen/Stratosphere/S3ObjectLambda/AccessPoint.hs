module Stratosphere.S3ObjectLambda.AccessPoint (
        module Exports, AccessPoint(..), mkAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3ObjectLambda.AccessPoint.ObjectLambdaConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3objectlambda-accesspoint.html>
    AccessPoint {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3objectlambda-accesspoint.html#cfn-s3objectlambda-accesspoint-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3objectlambda-accesspoint.html#cfn-s3objectlambda-accesspoint-objectlambdaconfiguration>
                 objectLambdaConfiguration :: ObjectLambdaConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPoint :: ObjectLambdaConfigurationProperty -> AccessPoint
mkAccessPoint objectLambdaConfiguration
  = AccessPoint
      {haddock_workaround_ = (),
       objectLambdaConfiguration = objectLambdaConfiguration,
       name = Prelude.Nothing}
instance ToResourceProperties AccessPoint where
  toResourceProperties AccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectLambdaConfiguration" JSON..= objectLambdaConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON AccessPoint where
  toJSON AccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectLambdaConfiguration" JSON..= objectLambdaConfiguration]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Name" AccessPoint where
  type PropertyType "Name" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..}
    = AccessPoint {name = Prelude.pure newValue, ..}
instance Property "ObjectLambdaConfiguration" AccessPoint where
  type PropertyType "ObjectLambdaConfiguration" AccessPoint = ObjectLambdaConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint {objectLambdaConfiguration = newValue, ..}