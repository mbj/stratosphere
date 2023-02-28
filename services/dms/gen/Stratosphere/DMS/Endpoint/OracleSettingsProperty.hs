module Stratosphere.DMS.Endpoint.OracleSettingsProperty (
        OracleSettingsProperty(..), mkOracleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OracleSettingsProperty
  = OracleSettingsProperty {accessAlternateDirectly :: (Prelude.Maybe (Value Prelude.Bool)),
                            addSupplementalLogging :: (Prelude.Maybe (Value Prelude.Bool)),
                            additionalArchivedLogDestId :: (Prelude.Maybe (Value Prelude.Integer)),
                            allowSelectNestedTables :: (Prelude.Maybe (Value Prelude.Bool)),
                            archivedLogDestId :: (Prelude.Maybe (Value Prelude.Integer)),
                            archivedLogsOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                            asmPassword :: (Prelude.Maybe (Value Prelude.Text)),
                            asmServer :: (Prelude.Maybe (Value Prelude.Text)),
                            asmUser :: (Prelude.Maybe (Value Prelude.Text)),
                            charLengthSemantics :: (Prelude.Maybe (Value Prelude.Text)),
                            directPathNoLog :: (Prelude.Maybe (Value Prelude.Bool)),
                            directPathParallelLoad :: (Prelude.Maybe (Value Prelude.Bool)),
                            enableHomogenousTablespace :: (Prelude.Maybe (Value Prelude.Bool)),
                            extraArchivedLogDestIds :: (Prelude.Maybe (ValueList Prelude.Integer)),
                            failTasksOnLobTruncation :: (Prelude.Maybe (Value Prelude.Bool)),
                            numberDatatypeScale :: (Prelude.Maybe (Value Prelude.Integer)),
                            oraclePathPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                            parallelAsmReadThreads :: (Prelude.Maybe (Value Prelude.Integer)),
                            readAheadBlocks :: (Prelude.Maybe (Value Prelude.Integer)),
                            readTableSpaceName :: (Prelude.Maybe (Value Prelude.Bool)),
                            replacePathPrefix :: (Prelude.Maybe (Value Prelude.Bool)),
                            retryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                            secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerOracleAsmAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerOracleAsmSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            securityDbEncryption :: (Prelude.Maybe (Value Prelude.Text)),
                            securityDbEncryptionName :: (Prelude.Maybe (Value Prelude.Text)),
                            spatialDataOptionToGeoJsonFunctionName :: (Prelude.Maybe (Value Prelude.Text)),
                            standbyDelayTime :: (Prelude.Maybe (Value Prelude.Integer)),
                            useAlternateFolderForOnline :: (Prelude.Maybe (Value Prelude.Bool)),
                            useBFile :: (Prelude.Maybe (Value Prelude.Bool)),
                            useDirectPathFullLoad :: (Prelude.Maybe (Value Prelude.Bool)),
                            useLogminerReader :: (Prelude.Maybe (Value Prelude.Bool)),
                            usePathPrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkOracleSettingsProperty :: OracleSettingsProperty
mkOracleSettingsProperty
  = OracleSettingsProperty
      {accessAlternateDirectly = Prelude.Nothing,
       addSupplementalLogging = Prelude.Nothing,
       additionalArchivedLogDestId = Prelude.Nothing,
       allowSelectNestedTables = Prelude.Nothing,
       archivedLogDestId = Prelude.Nothing,
       archivedLogsOnly = Prelude.Nothing, asmPassword = Prelude.Nothing,
       asmServer = Prelude.Nothing, asmUser = Prelude.Nothing,
       charLengthSemantics = Prelude.Nothing,
       directPathNoLog = Prelude.Nothing,
       directPathParallelLoad = Prelude.Nothing,
       enableHomogenousTablespace = Prelude.Nothing,
       extraArchivedLogDestIds = Prelude.Nothing,
       failTasksOnLobTruncation = Prelude.Nothing,
       numberDatatypeScale = Prelude.Nothing,
       oraclePathPrefix = Prelude.Nothing,
       parallelAsmReadThreads = Prelude.Nothing,
       readAheadBlocks = Prelude.Nothing,
       readTableSpaceName = Prelude.Nothing,
       replacePathPrefix = Prelude.Nothing,
       retryInterval = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerOracleAsmAccessRoleArn = Prelude.Nothing,
       secretsManagerOracleAsmSecretId = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       securityDbEncryption = Prelude.Nothing,
       securityDbEncryptionName = Prelude.Nothing,
       spatialDataOptionToGeoJsonFunctionName = Prelude.Nothing,
       standbyDelayTime = Prelude.Nothing,
       useAlternateFolderForOnline = Prelude.Nothing,
       useBFile = Prelude.Nothing,
       useDirectPathFullLoad = Prelude.Nothing,
       useLogminerReader = Prelude.Nothing,
       usePathPrefix = Prelude.Nothing}
instance ToResourceProperties OracleSettingsProperty where
  toResourceProperties OracleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.OracleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessAlternateDirectly"
                              Prelude.<$> accessAlternateDirectly,
                            (JSON..=) "AddSupplementalLogging"
                              Prelude.<$> addSupplementalLogging,
                            (JSON..=) "AdditionalArchivedLogDestId"
                              Prelude.<$> additionalArchivedLogDestId,
                            (JSON..=) "AllowSelectNestedTables"
                              Prelude.<$> allowSelectNestedTables,
                            (JSON..=) "ArchivedLogDestId" Prelude.<$> archivedLogDestId,
                            (JSON..=) "ArchivedLogsOnly" Prelude.<$> archivedLogsOnly,
                            (JSON..=) "AsmPassword" Prelude.<$> asmPassword,
                            (JSON..=) "AsmServer" Prelude.<$> asmServer,
                            (JSON..=) "AsmUser" Prelude.<$> asmUser,
                            (JSON..=) "CharLengthSemantics" Prelude.<$> charLengthSemantics,
                            (JSON..=) "DirectPathNoLog" Prelude.<$> directPathNoLog,
                            (JSON..=) "DirectPathParallelLoad"
                              Prelude.<$> directPathParallelLoad,
                            (JSON..=) "EnableHomogenousTablespace"
                              Prelude.<$> enableHomogenousTablespace,
                            (JSON..=) "ExtraArchivedLogDestIds"
                              Prelude.<$> extraArchivedLogDestIds,
                            (JSON..=) "FailTasksOnLobTruncation"
                              Prelude.<$> failTasksOnLobTruncation,
                            (JSON..=) "NumberDatatypeScale" Prelude.<$> numberDatatypeScale,
                            (JSON..=) "OraclePathPrefix" Prelude.<$> oraclePathPrefix,
                            (JSON..=) "ParallelAsmReadThreads"
                              Prelude.<$> parallelAsmReadThreads,
                            (JSON..=) "ReadAheadBlocks" Prelude.<$> readAheadBlocks,
                            (JSON..=) "ReadTableSpaceName" Prelude.<$> readTableSpaceName,
                            (JSON..=) "ReplacePathPrefix" Prelude.<$> replacePathPrefix,
                            (JSON..=) "RetryInterval" Prelude.<$> retryInterval,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerOracleAsmAccessRoleArn"
                              Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
                            (JSON..=) "SecretsManagerOracleAsmSecretId"
                              Prelude.<$> secretsManagerOracleAsmSecretId,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "SecurityDbEncryption" Prelude.<$> securityDbEncryption,
                            (JSON..=) "SecurityDbEncryptionName"
                              Prelude.<$> securityDbEncryptionName,
                            (JSON..=) "SpatialDataOptionToGeoJsonFunctionName"
                              Prelude.<$> spatialDataOptionToGeoJsonFunctionName,
                            (JSON..=) "StandbyDelayTime" Prelude.<$> standbyDelayTime,
                            (JSON..=) "UseAlternateFolderForOnline"
                              Prelude.<$> useAlternateFolderForOnline,
                            (JSON..=) "UseBFile" Prelude.<$> useBFile,
                            (JSON..=) "UseDirectPathFullLoad"
                              Prelude.<$> useDirectPathFullLoad,
                            (JSON..=) "UseLogminerReader" Prelude.<$> useLogminerReader,
                            (JSON..=) "UsePathPrefix" Prelude.<$> usePathPrefix])}
instance JSON.ToJSON OracleSettingsProperty where
  toJSON OracleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessAlternateDirectly"
                 Prelude.<$> accessAlternateDirectly,
               (JSON..=) "AddSupplementalLogging"
                 Prelude.<$> addSupplementalLogging,
               (JSON..=) "AdditionalArchivedLogDestId"
                 Prelude.<$> additionalArchivedLogDestId,
               (JSON..=) "AllowSelectNestedTables"
                 Prelude.<$> allowSelectNestedTables,
               (JSON..=) "ArchivedLogDestId" Prelude.<$> archivedLogDestId,
               (JSON..=) "ArchivedLogsOnly" Prelude.<$> archivedLogsOnly,
               (JSON..=) "AsmPassword" Prelude.<$> asmPassword,
               (JSON..=) "AsmServer" Prelude.<$> asmServer,
               (JSON..=) "AsmUser" Prelude.<$> asmUser,
               (JSON..=) "CharLengthSemantics" Prelude.<$> charLengthSemantics,
               (JSON..=) "DirectPathNoLog" Prelude.<$> directPathNoLog,
               (JSON..=) "DirectPathParallelLoad"
                 Prelude.<$> directPathParallelLoad,
               (JSON..=) "EnableHomogenousTablespace"
                 Prelude.<$> enableHomogenousTablespace,
               (JSON..=) "ExtraArchivedLogDestIds"
                 Prelude.<$> extraArchivedLogDestIds,
               (JSON..=) "FailTasksOnLobTruncation"
                 Prelude.<$> failTasksOnLobTruncation,
               (JSON..=) "NumberDatatypeScale" Prelude.<$> numberDatatypeScale,
               (JSON..=) "OraclePathPrefix" Prelude.<$> oraclePathPrefix,
               (JSON..=) "ParallelAsmReadThreads"
                 Prelude.<$> parallelAsmReadThreads,
               (JSON..=) "ReadAheadBlocks" Prelude.<$> readAheadBlocks,
               (JSON..=) "ReadTableSpaceName" Prelude.<$> readTableSpaceName,
               (JSON..=) "ReplacePathPrefix" Prelude.<$> replacePathPrefix,
               (JSON..=) "RetryInterval" Prelude.<$> retryInterval,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerOracleAsmAccessRoleArn"
                 Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
               (JSON..=) "SecretsManagerOracleAsmSecretId"
                 Prelude.<$> secretsManagerOracleAsmSecretId,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "SecurityDbEncryption" Prelude.<$> securityDbEncryption,
               (JSON..=) "SecurityDbEncryptionName"
                 Prelude.<$> securityDbEncryptionName,
               (JSON..=) "SpatialDataOptionToGeoJsonFunctionName"
                 Prelude.<$> spatialDataOptionToGeoJsonFunctionName,
               (JSON..=) "StandbyDelayTime" Prelude.<$> standbyDelayTime,
               (JSON..=) "UseAlternateFolderForOnline"
                 Prelude.<$> useAlternateFolderForOnline,
               (JSON..=) "UseBFile" Prelude.<$> useBFile,
               (JSON..=) "UseDirectPathFullLoad"
                 Prelude.<$> useDirectPathFullLoad,
               (JSON..=) "UseLogminerReader" Prelude.<$> useLogminerReader,
               (JSON..=) "UsePathPrefix" Prelude.<$> usePathPrefix]))
instance Property "AccessAlternateDirectly" OracleSettingsProperty where
  type PropertyType "AccessAlternateDirectly" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {accessAlternateDirectly = Prelude.pure newValue, ..}
instance Property "AddSupplementalLogging" OracleSettingsProperty where
  type PropertyType "AddSupplementalLogging" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {addSupplementalLogging = Prelude.pure newValue, ..}
instance Property "AdditionalArchivedLogDestId" OracleSettingsProperty where
  type PropertyType "AdditionalArchivedLogDestId" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {additionalArchivedLogDestId = Prelude.pure newValue, ..}
instance Property "AllowSelectNestedTables" OracleSettingsProperty where
  type PropertyType "AllowSelectNestedTables" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {allowSelectNestedTables = Prelude.pure newValue, ..}
instance Property "ArchivedLogDestId" OracleSettingsProperty where
  type PropertyType "ArchivedLogDestId" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {archivedLogDestId = Prelude.pure newValue, ..}
instance Property "ArchivedLogsOnly" OracleSettingsProperty where
  type PropertyType "ArchivedLogsOnly" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {archivedLogsOnly = Prelude.pure newValue, ..}
instance Property "AsmPassword" OracleSettingsProperty where
  type PropertyType "AsmPassword" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {asmPassword = Prelude.pure newValue, ..}
instance Property "AsmServer" OracleSettingsProperty where
  type PropertyType "AsmServer" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {asmServer = Prelude.pure newValue, ..}
instance Property "AsmUser" OracleSettingsProperty where
  type PropertyType "AsmUser" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {asmUser = Prelude.pure newValue, ..}
instance Property "CharLengthSemantics" OracleSettingsProperty where
  type PropertyType "CharLengthSemantics" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {charLengthSemantics = Prelude.pure newValue, ..}
instance Property "DirectPathNoLog" OracleSettingsProperty where
  type PropertyType "DirectPathNoLog" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {directPathNoLog = Prelude.pure newValue, ..}
instance Property "DirectPathParallelLoad" OracleSettingsProperty where
  type PropertyType "DirectPathParallelLoad" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {directPathParallelLoad = Prelude.pure newValue, ..}
instance Property "EnableHomogenousTablespace" OracleSettingsProperty where
  type PropertyType "EnableHomogenousTablespace" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {enableHomogenousTablespace = Prelude.pure newValue, ..}
instance Property "ExtraArchivedLogDestIds" OracleSettingsProperty where
  type PropertyType "ExtraArchivedLogDestIds" OracleSettingsProperty = ValueList Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {extraArchivedLogDestIds = Prelude.pure newValue, ..}
instance Property "FailTasksOnLobTruncation" OracleSettingsProperty where
  type PropertyType "FailTasksOnLobTruncation" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {failTasksOnLobTruncation = Prelude.pure newValue, ..}
instance Property "NumberDatatypeScale" OracleSettingsProperty where
  type PropertyType "NumberDatatypeScale" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {numberDatatypeScale = Prelude.pure newValue, ..}
instance Property "OraclePathPrefix" OracleSettingsProperty where
  type PropertyType "OraclePathPrefix" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {oraclePathPrefix = Prelude.pure newValue, ..}
instance Property "ParallelAsmReadThreads" OracleSettingsProperty where
  type PropertyType "ParallelAsmReadThreads" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {parallelAsmReadThreads = Prelude.pure newValue, ..}
instance Property "ReadAheadBlocks" OracleSettingsProperty where
  type PropertyType "ReadAheadBlocks" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {readAheadBlocks = Prelude.pure newValue, ..}
instance Property "ReadTableSpaceName" OracleSettingsProperty where
  type PropertyType "ReadTableSpaceName" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {readTableSpaceName = Prelude.pure newValue, ..}
instance Property "ReplacePathPrefix" OracleSettingsProperty where
  type PropertyType "ReplacePathPrefix" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {replacePathPrefix = Prelude.pure newValue, ..}
instance Property "RetryInterval" OracleSettingsProperty where
  type PropertyType "RetryInterval" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {retryInterval = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" OracleSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerOracleAsmAccessRoleArn" OracleSettingsProperty where
  type PropertyType "SecretsManagerOracleAsmAccessRoleArn" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerOracleAsmAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerOracleAsmSecretId" OracleSettingsProperty where
  type PropertyType "SecretsManagerOracleAsmSecretId" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerOracleAsmSecretId = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" OracleSettingsProperty where
  type PropertyType "SecretsManagerSecretId" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "SecurityDbEncryption" OracleSettingsProperty where
  type PropertyType "SecurityDbEncryption" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {securityDbEncryption = Prelude.pure newValue, ..}
instance Property "SecurityDbEncryptionName" OracleSettingsProperty where
  type PropertyType "SecurityDbEncryptionName" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {securityDbEncryptionName = Prelude.pure newValue, ..}
instance Property "SpatialDataOptionToGeoJsonFunctionName" OracleSettingsProperty where
  type PropertyType "SpatialDataOptionToGeoJsonFunctionName" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {spatialDataOptionToGeoJsonFunctionName = Prelude.pure newValue,
         ..}
instance Property "StandbyDelayTime" OracleSettingsProperty where
  type PropertyType "StandbyDelayTime" OracleSettingsProperty = Value Prelude.Integer
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {standbyDelayTime = Prelude.pure newValue, ..}
instance Property "UseAlternateFolderForOnline" OracleSettingsProperty where
  type PropertyType "UseAlternateFolderForOnline" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {useAlternateFolderForOnline = Prelude.pure newValue, ..}
instance Property "UseBFile" OracleSettingsProperty where
  type PropertyType "UseBFile" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty {useBFile = Prelude.pure newValue, ..}
instance Property "UseDirectPathFullLoad" OracleSettingsProperty where
  type PropertyType "UseDirectPathFullLoad" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {useDirectPathFullLoad = Prelude.pure newValue, ..}
instance Property "UseLogminerReader" OracleSettingsProperty where
  type PropertyType "UseLogminerReader" OracleSettingsProperty = Value Prelude.Bool
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {useLogminerReader = Prelude.pure newValue, ..}
instance Property "UsePathPrefix" OracleSettingsProperty where
  type PropertyType "UsePathPrefix" OracleSettingsProperty = Value Prelude.Text
  set newValue OracleSettingsProperty {..}
    = OracleSettingsProperty
        {usePathPrefix = Prelude.pure newValue, ..}