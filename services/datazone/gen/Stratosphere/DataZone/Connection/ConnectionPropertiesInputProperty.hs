module Stratosphere.DataZone.Connection.ConnectionPropertiesInputProperty (
        module Exports, ConnectionPropertiesInputProperty(..),
        mkConnectionPropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.AthenaPropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.GluePropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.HyperPodPropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.IamPropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.RedshiftPropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.S3PropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.SparkEmrPropertiesInputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.SparkGluePropertiesInputProperty as Exports
import Stratosphere.ResourceProperties
data ConnectionPropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html>
    ConnectionPropertiesInputProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-athenaproperties>
                                       athenaProperties :: (Prelude.Maybe AthenaPropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-glueproperties>
                                       glueProperties :: (Prelude.Maybe GluePropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-hyperpodproperties>
                                       hyperPodProperties :: (Prelude.Maybe HyperPodPropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-iamproperties>
                                       iamProperties :: (Prelude.Maybe IamPropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-redshiftproperties>
                                       redshiftProperties :: (Prelude.Maybe RedshiftPropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-s3properties>
                                       s3Properties :: (Prelude.Maybe S3PropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-sparkemrproperties>
                                       sparkEmrProperties :: (Prelude.Maybe SparkEmrPropertiesInputProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-sparkglueproperties>
                                       sparkGlueProperties :: (Prelude.Maybe SparkGluePropertiesInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionPropertiesInputProperty ::
  ConnectionPropertiesInputProperty
mkConnectionPropertiesInputProperty
  = ConnectionPropertiesInputProperty
      {haddock_workaround_ = (), athenaProperties = Prelude.Nothing,
       glueProperties = Prelude.Nothing,
       hyperPodProperties = Prelude.Nothing,
       iamProperties = Prelude.Nothing,
       redshiftProperties = Prelude.Nothing,
       s3Properties = Prelude.Nothing,
       sparkEmrProperties = Prelude.Nothing,
       sparkGlueProperties = Prelude.Nothing}
instance ToResourceProperties ConnectionPropertiesInputProperty where
  toResourceProperties ConnectionPropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.ConnectionPropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AthenaProperties" Prelude.<$> athenaProperties,
                            (JSON..=) "GlueProperties" Prelude.<$> glueProperties,
                            (JSON..=) "HyperPodProperties" Prelude.<$> hyperPodProperties,
                            (JSON..=) "IamProperties" Prelude.<$> iamProperties,
                            (JSON..=) "RedshiftProperties" Prelude.<$> redshiftProperties,
                            (JSON..=) "S3Properties" Prelude.<$> s3Properties,
                            (JSON..=) "SparkEmrProperties" Prelude.<$> sparkEmrProperties,
                            (JSON..=) "SparkGlueProperties" Prelude.<$> sparkGlueProperties])}
instance JSON.ToJSON ConnectionPropertiesInputProperty where
  toJSON ConnectionPropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AthenaProperties" Prelude.<$> athenaProperties,
               (JSON..=) "GlueProperties" Prelude.<$> glueProperties,
               (JSON..=) "HyperPodProperties" Prelude.<$> hyperPodProperties,
               (JSON..=) "IamProperties" Prelude.<$> iamProperties,
               (JSON..=) "RedshiftProperties" Prelude.<$> redshiftProperties,
               (JSON..=) "S3Properties" Prelude.<$> s3Properties,
               (JSON..=) "SparkEmrProperties" Prelude.<$> sparkEmrProperties,
               (JSON..=) "SparkGlueProperties" Prelude.<$> sparkGlueProperties]))
instance Property "AthenaProperties" ConnectionPropertiesInputProperty where
  type PropertyType "AthenaProperties" ConnectionPropertiesInputProperty = AthenaPropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {athenaProperties = Prelude.pure newValue, ..}
instance Property "GlueProperties" ConnectionPropertiesInputProperty where
  type PropertyType "GlueProperties" ConnectionPropertiesInputProperty = GluePropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {glueProperties = Prelude.pure newValue, ..}
instance Property "HyperPodProperties" ConnectionPropertiesInputProperty where
  type PropertyType "HyperPodProperties" ConnectionPropertiesInputProperty = HyperPodPropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {hyperPodProperties = Prelude.pure newValue, ..}
instance Property "IamProperties" ConnectionPropertiesInputProperty where
  type PropertyType "IamProperties" ConnectionPropertiesInputProperty = IamPropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {iamProperties = Prelude.pure newValue, ..}
instance Property "RedshiftProperties" ConnectionPropertiesInputProperty where
  type PropertyType "RedshiftProperties" ConnectionPropertiesInputProperty = RedshiftPropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {redshiftProperties = Prelude.pure newValue, ..}
instance Property "S3Properties" ConnectionPropertiesInputProperty where
  type PropertyType "S3Properties" ConnectionPropertiesInputProperty = S3PropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {s3Properties = Prelude.pure newValue, ..}
instance Property "SparkEmrProperties" ConnectionPropertiesInputProperty where
  type PropertyType "SparkEmrProperties" ConnectionPropertiesInputProperty = SparkEmrPropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {sparkEmrProperties = Prelude.pure newValue, ..}
instance Property "SparkGlueProperties" ConnectionPropertiesInputProperty where
  type PropertyType "SparkGlueProperties" ConnectionPropertiesInputProperty = SparkGluePropertiesInputProperty
  set newValue ConnectionPropertiesInputProperty {..}
    = ConnectionPropertiesInputProperty
        {sparkGlueProperties = Prelude.pure newValue, ..}