#include <a_samp>
// ������ ����� ���������� �������� � ������� ������� ���� �������
// ���������� ���������� � ���� ��� ����� ������

stock GetPlayerNameFixRu(player_id, name[], len) {
    GetPlayerName(player_id, name, len);
    for (new i = 0; i < len; ++i) {
        if (!name[i]) {
            break;
        }
        name[i] &= 0xff;
    }
}
#define GetPlayerName GetPlayerNameFixRu
